import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/providers/strtegiesProvider.dart';

import 'Utils/notifier/strategieNotifier.dart';

class StrategyBuilderScreen extends ConsumerStatefulWidget {
  @override
  _StrategyBuilderScreenState createState() => _StrategyBuilderScreenState();
}

class _StrategyBuilderScreenState extends ConsumerState<StrategyBuilderScreen> {
  List<Indicator> availableIndicators = [
    Indicator(name: 'MACD', parameters: {'fast period': 12, 'slow period': 26, 'signal period': 9}),
    Indicator(name: 'RSI', parameters: {'time period': 14}),
    Indicator(name: 'SMA', parameters: {'time period': 50}),
    Indicator(name: 'Bollinger Bands', parameters: {'time period': 20, 'standard deviation': 2}),
  ];
  List<String> availableConditions = ['isGreaterThan', 'isLessthan', 'isEqual', 'IsnotEqual'];
  List<String> logicalOperator = ["AND" , "OR"];

  void _addComponent(BuildContext context) async {
    String? selectedComponent = await showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Select Component'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context, 'indicator'),
              child: const Text('Add Indicator'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, 'condition'),
              child: const Text('Add Condition'),
            ),

            ElevatedButton(
              onPressed: () => Navigator.pop(context, 'logicalOperator'),
              child: const Text('Add LogicalOperator'),
            ),
          ],
        ),
      ),
    );

    if (selectedComponent == 'indicator') {
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
        final provider = ref.watch(Practice_Provider);
        provider.addComponents(IndicatorWidget(indicator: selectedIndicator,));
      }
    }
    else if (selectedComponent == 'condition') {
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

        final provider = ref.watch(Practice_Provider.notifier);
           provider.addComponents(ConditionWidget(type: selectedCondition));
      }
    }
    else if (selectedComponent == 'logicalOperator') {
      String? selectedLogicalOperator = await showDialog<String>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Select Condition'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children:logicalOperator.map((condition) {
              return ListTile(
                title: Text(condition),
                onTap: () => Navigator.pop(context, condition),
              );
            }).toList(),
          ),
        ),
      );
      if (selectedLogicalOperator != null) {

        final provider = ref.watch(Practice_Provider.notifier);
        provider.addComponents(LogicalOperatorWidget(type: selectedLogicalOperator));
      }
    }
  }

  void _saveStrategy(BuildContext context) {
    final provider = ref.watch(Practice_Provider.notifier);
     var components = provider.getComponents();
    print('Saving Strategy:');
    // print(components);
    Navigator.pop(context , components );
  }

  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(Practice_Provider.notifier);
    final provid = ref.watch(Practice_Provider);
    var compinent = provid.getComponents();


    return Scaffold(
      appBar: AppBar(title: const Text('Strategy Builder')),
      body: Column(
        children: [

          Expanded(
            child:  ListView.builder(
              itemCount: provider.strategyComponents.length,
              itemBuilder: (context, index) {
                // print(compinent);
                return provider.strategyComponents[index];
              },
            )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => _addComponent(context),
                child: const Text('Add Component'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () => _saveStrategy(context),
                child: const Text('Save Strategy'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

