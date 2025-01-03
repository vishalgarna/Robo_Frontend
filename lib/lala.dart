// import 'package:flutter/material.dart';
// import 'package:practice/views/strategyCreationPage.dart';
// import 'package:provider/provider.dart';
//
// void main() {
//   runApp(
//     ChangeNotifierProvider(
//       create: (context) => StrategyProvider(),
//       child: MyApp(),
//     ),
//   );
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: StrategyCreationPage(pairName: '', strategyName: '',),
//     );
//   }
// }
//
// class StrategyProvider with ChangeNotifier {
//   List<Widget> _strategyComponents = [];
//   List<Widget> get strategyComponents => _strategyComponents;
//
//   void addComponent(Widget component) {
//     _strategyComponents.add(component);
//     notifyListeners();
//   }
//
//   void clearComponents() {
//     _strategyComponents.clear();
//     notifyListeners();
//   }
//
//   List<Map<String, dynamic>> getComponents() {
//     return _strategyComponents.map((component) {
//       if (component is IndicatorWidget) {
//         return {
//           'type': 'indicator',
//           'name': component.indicator.name,
//           'parameters': component.parameters.map((k, v) => MapEntry(k, v)),
//         };
//       } else if (component is ConditionWidget) {
//         return {
//           'type': 'condition',
//           'name': component.type,
//         };
//       }
//       return {};
//     }).toList().cast<Map<String, dynamic>>();
//   }
// }
//
// class Indicator {
//   final String name;
//   final Map<String, double> parameters;
//
//   Indicator({required this.name, required this.parameters});
// }
//
// class IndicatorWidget extends StatefulWidget {
//   final Indicator indicator;
//
//   IndicatorWidget({required this.indicator});
//
//   @override
//   _IndicatorWidgetState createState() => _IndicatorWidgetState();
//
//   Map<String, double> get parameters => indicator.parameters;
// }
//
// class _IndicatorWidgetState extends State<IndicatorWidget> {
//   late Map<String, double> parameters;
//
//   @override
//   void initState() {
//     super.initState();
//     parameters = Map.from(widget.indicator.parameters);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(widget.indicator.name, style: const TextStyle(fontSize: 15)),
//           const SizedBox(width: 10),
//           ...parameters.entries.map((entry) {
//             return Padding(
//               padding: const EdgeInsets.only(right: 8.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text('${entry.key}'),
//                   SizedBox(
//                     width: 80,
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: entry.value.toString(),
//                       ),
//                       onChanged: (val) {
//                         setState(() {
//                           parameters[entry.key] = double.tryParse(val) ?? entry.value;
//                         });
//                         // Update the parameters in the main Indicator object
//                         widget.indicator.parameters[entry.key] = double.tryParse(val) ?? entry.value;
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           }).toList(),
//         ],
//       ),
//     );
//   }
// }
//
// class ConditionWidget extends StatelessWidget {
//   final String type;
//
//   ConditionWidget({required this.type});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(10),
//       margin: const EdgeInsets.all(5),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         border: Border.all(color: Colors.green),
//       ),
//       child: Text(type, style: const TextStyle(fontSize: 18)),
//     );
//   }
// }
//
//
// class StrategyBuilderScreen extends StatefulWidget {
//   @override
//   _StrategyBuilderScreenState createState() => _StrategyBuilderScreenState();
// }
//
// class _StrategyBuilderScreenState extends State<StrategyBuilderScreen> {
//   List<Indicator> availableIndicators = [
//     Indicator(name: 'MACD', parameters: {'fast period': 12, 'slow period': 26, 'signal period': 9}),
//     Indicator(name: 'RSI', parameters: {'time period': 14}),
//     Indicator(name: 'SMA', parameters: {'time period': 30}),
//     Indicator(name: 'Bollinger Bands', parameters: {'time period': 20, 'standard deviation': 2}),
//   ];
//   List<String> availableConditions = ['AND', 'OR', 'isGreaterThan', 'isLessthan', 'isEqual', 'IsnotEqual'];
//
//   void _addComponent(BuildContext context) async {
//     String? selectedComponent = await showDialog<String>(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: const Text('Select Component'),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             ElevatedButton(
//               onPressed: () => Navigator.pop(context, 'indicator'),
//               child: const Text('Add Indicator'),
//             ),
//             ElevatedButton(
//               onPressed: () => Navigator.pop(context, 'condition'),
//               child: const Text('Add Condition'),
//             ),
//
//           ],
//         ),
//       ),
//     );
//
//     if (selectedComponent == 'indicator') {
//       Indicator? selectedIndicator = await showDialog<Indicator>(
//         context: context,
//         builder: (context) => AlertDialog(
//           title: const Text('Select Indicator'),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: availableIndicators.map((indicator) {
//               return ListTile(
//                 title: Text(indicator.name),
//                 onTap: () => Navigator.pop(context, indicator),
//               );
//             }).toList(),
//           ),
//         ),
//       );
//       if (selectedIndicator != null) {
//         Provider.of<StrategyProvider>(context, listen: false)
//             .addComponent(IndicatorWidget(indicator: selectedIndicator));
//       }
//     } else if (selectedComponent == 'condition') {
//       String? selectedCondition = await showDialog<String>(
//         context: context,
//         builder: (context) => AlertDialog(
//           title: const Text('Select Condition'),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: availableConditions.map((condition) {
//               return ListTile(
//                 title: Text(condition),
//                 onTap: () => Navigator.pop(context, condition),
//               );
//             }).toList(),
//           ),
//         ),
//       );
//       if (selectedCondition != null) {
//         Provider.of<StrategyProvider>(context, listen: false)
//             .addComponent(ConditionWidget(type: selectedCondition));
//       }
//     }
//   }
//
//   void _saveStrategy(BuildContext context) {
//     List<Map<String, dynamic>> components = Provider.of<StrategyProvider>(context, listen: false).getComponents();
//     print('Saving Strategy:');
//     print(components);
//     Provider.of<StrategyProvider>(context, listen: false).clearComponents();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Strategy Builder')),
//       body: Column(
//         children: [
//           Expanded(
//             child: Consumer<StrategyProvider>(
//               builder: (context, strategyProvider, child) {
//                 return ListView.builder(
//                   itemCount: strategyProvider.strategyComponents.length,
//                   itemBuilder: (context, index) {
//                     return strategyProvider.strategyComponents[index];
//                   },
//                 );
//               },
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 onPressed: () => _addComponent(context),
//                 child: const Text('Add Component'),
//               ),
//               const SizedBox(width: 10),
//               ElevatedButton(
//                 onPressed: () => _saveStrategy(context),
//                 child: const Text('Save Strategy'),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
