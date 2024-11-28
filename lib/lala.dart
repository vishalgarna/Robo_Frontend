// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class StrategyCreationPage extends StatefulWidget {
//   StrategyCreationPage({super.key});
//
//   @override
//   State<StrategyCreationPage> createState() => _StrategyCreationPageState();
// }
//
// class _StrategyCreationPageState extends State<StrategyCreationPage> {
//   final qtyController = TextEditingController();
//
//   String? selectedInd1;
//   String? selectedInd2;
//
//   List<String> indicatorsList = ['SMA', 'RSI', 'MACD', 'ADX', 'BollingerBand', 'HMA'];
//
//   Map<String, List<String>> indicatorParameters = {
//     'SMA': ['Period'],
//     'RSI': ['Period', 'Overbought Level', 'Oversold Level'],
//     'MACD': ['Fast EMA Period', 'Slow EMA Period', 'Signal Line Period'],
//     'ADX': ['Period'],
//     'BollingerBand': ['Period', 'Standard Deviation'],
//     'HMA': ['Period']
//   };
//
//   // Default Values for Parameters
//   Map<String, Map<String, String>> defaultValues = {
//     'SMA': {'Period': '14'},
//     'RSI': {'Period': '14', 'Overbought Level': '70', 'Oversold Level': '30'},
//     'MACD': {'Fast EMA Period': '12', 'Slow EMA Period': '26', 'Signal Line Period': '9'},
//     'ADX': {'Period': '14'},
//     'BollingerBand': {'Period': '20', 'Standard Deviation': '2'},
//     'HMA': {'Period': '9'}
//   };
//
//   List<String> condition = ['isGreaterThan', 'isLessThan', 'isEqual'];
//
//
//   Map<String, Map<String, TextEditingController>> controllersMap = {};
//
//   void initializeControllers(String indicator, String selectedIndicator) {
//
//     controllersMap[selectedIndicator] = {};
//
//     // Initialize TextEditingController with default values
//     for (var param in indicatorParameters[indicator]!) {
//       controllersMap[selectedIndicator]![param] = TextEditingController(
//         text: defaultValues[indicator]![param],
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Strategy Builder'),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text('Action', style: TextStyle(fontSize: 18)),
//                     SizedBox(width: 5),
//                     DropdownButton(
//                       hint: Text('BUY/SELL'),
//                       items: [
//                         DropdownMenuItem(child: Text('Buy'), value: 'Buy'),
//                         DropdownMenuItem(child: Text('Sell'), value: 'Sell'),
//                       ],
//                       onChanged: (newValue) {},
//                     ),
//                     Text("Qty", style: TextStyle(fontSize: 18)),
//                     Container(
//                       width: 120,
//                       child: TextField(
//                         controller: qtyController,
//                         keyboardType: TextInputType.number,
//                         decoration: const InputDecoration(
//                           border: OutlineInputBorder(),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Text('Strategy Builder', style: TextStyle(fontSize: 18)),
//                 Container(
//                   height: 170,
//
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     boxShadow: [BoxShadow()],
//                   ),
//                   child: Column(
//                     children: [
//                       Text('Condition 1', style: TextStyle(fontSize: 18)),
//                       Row(
//                         children: [
//                           DropdownButton(
//                             hint: Text(selectedInd1 ?? 'Indicator/Close'),
//                             items: indicatorsList.map<DropdownMenuItem<String>>((String item) {
//                               return DropdownMenuItem<String>(
//                                 value: item,
//                                 child: Text(item),
//                               );
//                             }).toList(),
//                             onChanged: (indValue) {
//                               setState(() {
//                                 selectedInd1 = indValue;
//                                 if (indValue != null) {
//                                   initializeControllers(indValue, 'selectedInd1');
//                                 }
//                               });
//                             },
//                           ),
//                           if (selectedInd1 != null)
//                             ...indicatorParameters[selectedInd1]!.map((param) {
//                               return Expanded(
//                                 child: Padding(
//                                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                                   child: TextField(
//                                     controller: controllersMap['selectedInd1']![param],
//                                     decoration: InputDecoration(
//                                       labelText: param,
//                                       border: OutlineInputBorder(),
//                                     ),
//                                   ),
//                                 ),
//                               );
//                             }).toList(),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           DropdownButton(
//                             hint: const Text('Condition'),
//                             items: condition.map<DropdownMenuItem<String>>((String item) {
//                               return DropdownMenuItem<String>(
//                                 value: item,
//                                 child: Text(item),
//                               );
//                             }).toList(),
//                             onChanged: (newValue) {
//                               print(newValue);
//                             },
//                           ),
//                           DropdownButton(
//                             hint: Text(selectedInd2 ?? 'Indicator/Value'),
//                             items: indicatorsList.map<DropdownMenuItem<String>>((String item) {
//                               return DropdownMenuItem<String>(
//                                 value: item,
//                                 child: Text(item),
//                               );
//                             }).toList(),
//                             onChanged: (secondValue) {
//                               setState(() {
//                                 selectedInd2 = secondValue;
//                                 if (secondValue != null) {
//                                   initializeControllers(secondValue, 'selectedInd2');
//                                 }
//                               });
//                             },
//                           ),
//                           if (selectedInd2 != null)
//                             ...indicatorParameters[selectedInd2]!.map((param) {
//                               return Expanded(
//                                 child: Padding(
//                                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                                   child: TextField(
//                                     controller: controllersMap['selectedInd2']![param],
//                                     decoration: InputDecoration(
//                                       labelText: param,
//                                       border: OutlineInputBorder(),
//                                     ),
//                                   ),
//                                 ),
//                               );
//                             }).toList(),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {
//                         print('Indicator 1: $selectedInd1');
//                         indicatorParameters[selectedInd1]!.forEach((param) {
//                           print('$param: ${controllersMap['selectedInd1']![param]!.text}');
//                         });
//
//                         print('Indicator 2: $selectedInd2');
//                         indicatorParameters[selectedInd2]!.forEach((param) {
//                           print('$param: ${controllersMap['selectedInd2']![param]!.text}');
//                         });
//                       },
//                       child: Text('Deploy'),
//                     ),
//                     ElevatedButton(
//                       onPressed: () {},
//                       child: Text('BackTest'),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
