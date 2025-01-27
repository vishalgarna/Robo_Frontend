import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/providers/Providers.dart';
import 'package:logging/logging.dart';

import 'Utils/notifier/strategieNotifier.dart';

class StrategyBuilderScreen extends ConsumerStatefulWidget {
  @override
  _StrategyBuilderScreenState createState() => _StrategyBuilderScreenState();
}

class _StrategyBuilderScreenState extends ConsumerState<StrategyBuilderScreen> {
  final Logger _logger = Logger('StrategyBuilderLogger');

  List<Indicator> availableIndicators = [
    Indicator(name: 'close', defaultParameters: {'close': 50}),
    Indicator(name: 'william_fractal', defaultParameters: {'period': 9}),
    Indicator(name: 'MACD', defaultParameters: {'fast period': 12, 'slow period': 26, 'signal period': 9}),
    Indicator(name: 'RSI', defaultParameters: {'time period': 14}),
    Indicator(name: 'SMA', defaultParameters: {'time period': 50}),
    Indicator(name: 'Bollinger Bands', defaultParameters: {'time period': 20, 'standard deviation': 2}),
  ];
  List<String> availableConditions = ['isGreaterThan', 'isLessThan', 'isEqual', 'IsNotEqual'];
  List<String> logicalOperator = ['AND', 'OR'];
  String? selectedComponent;

  void _addComponent(BuildContext context, type) async {
    _logger.info('Adding component of type: $type');
    if (type == 'indicator') {
      Indicator? selectedIndicator = await showDialog<Indicator>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Select Indicator'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: availableIndicators.map((indicator) {
              return ListTile(
                title: Text(indicator.name),
                onTap: () => Navigator.pop(context, indicator),
              );
            }).toList(),
          ),
        ),
      );
      if (selectedIndicator != null) {
        final provider = ref.read(Practice_Provider);
        provider.addComponents(IndicatorWidget(indicator: selectedIndicator, initialParameters: Map.from(selectedIndicator.defaultParameters)));
        _logger.info('Added Indicator: ${selectedIndicator.name}');
      }
    } else if (type == 'condition') {
      String? selectedCondition = await showDialog<String>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Select Condition'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: availableConditions.map((condition) {
              return ListTile(
                title: Text(condition),
                onTap: () => Navigator.pop(context, condition),
              );
            }).toList(),
          ),
        ),
      );
      if (selectedCondition != null) {
        final provider = ref.read(Practice_Provider);
        provider.addComponents(ConditionWidget(type: selectedCondition));
        _logger.info('Added Condition: $selectedCondition');
      }
    } else if (type == 'logicalOperator') {
      String? selectedLogicalOperator = await showDialog<String>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Select Logical Operator'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: logicalOperator.map((condition) {
              return ListTile(
                title: Text(condition),
                onTap: () => Navigator.pop(context, condition),
              );
            }).toList(),
          ),
        ),
      );
      if (selectedLogicalOperator != null) {
        final provider = ref.read(Practice_Provider);
        provider.addComponents(LogicalOperatorWidget(type: selectedLogicalOperator));
        _logger.info('Added Logical Operator: $selectedLogicalOperator');
      }
    }
  }

  void _saveStrategy(BuildContext context) {
    _logger.info('Saving Strategy:');
    final provider = ref.watch(Practice_Provider);
    var  components = provider.getComponents();
    _logger.info('Components: $components');
    Navigator.pop(context, components);
  }

  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(Practice_Provider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('conditions'),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      selectedComponent = 'indicator';
                      _addComponent(context, selectedComponent);
                    },
                    child: const Text('Indicator', style: TextStyle(fontSize: 11)),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      selectedComponent = 'condition';
                      _addComponent(context, selectedComponent);
                    },
                    child: const Text('Condition', style: TextStyle(fontSize: 11)),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      selectedComponent = 'logicalOperator';
                      _addComponent(context, selectedComponent);
                    },
                    child: const Text('LogicalOperator', style: TextStyle(fontSize: 11)),
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 20, thickness: 5),
          Expanded(
            child: ListView.builder(
              itemCount: provider.strategyComponents.length,
              itemBuilder: (context, index) {
                return provider.strategyComponents[index];
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  provider.clearComponents();
                },
                child: const Text('Reset'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  _saveStrategy(context);
                },
                child: const Text('Save Strategy'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


