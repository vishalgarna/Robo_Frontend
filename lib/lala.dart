// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:practice/Utils/StradegyCreatetion_Utilities.dart';
// import 'package:practice/Widgets/customWidgets.dart';
// import 'package:practice/models/strategymodel/strategies_model.dart';
// import 'package:practice/providers/Providers.dart';
// import 'package:expandable_text/expandable_text.dart';
// import '../views/searchPairpage.dart';
//
// class AllStrategyWidget extends ConsumerWidget {
//   late String strategyName;
//   final GlobalKey<FormState> state = GlobalKey<FormState>();
//   AllStrategyWidget({super.key});
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//       appBar: AppBar(
//       ),
//       body:   SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               customButtonWidgets(
//                 title: 'Create Strategy',
//                 width: 350,
//                 callback: () async {
//                   // showDialog
//                   //   (
//                   //   context: context,
//                   //   builder: (context) {
//                   //     return AlertDialog(
//                   //       backgroundColor: Colors.white,
//                   //       title: const Text(
//                   //         "Strategy Name",
//                   //         style: TextStyle(fontSize: 19),
//                   //       ),
//                   //       content: Form(
//                   //         key: state,
//                   //         child: TextFormField(
//                   //           controller: _controller,
//                   //           autovalidateMode: AutovalidateMode.onUserInteraction,
//                   //           validator: (value) {
//                   //             String newValue = value!.trim();
//                   //             if (newValue.isEmpty) {
//                   //               return 'Please Enter Name';
//                   //             }
//                   //             return null;
//                   //           },
//                   //         ),
//                   //       ),
//                   //       actions: [
//                   //         TextButton(
//                   //           onPressed: () {
//                   //             String value = _controller.text.trim();
//                   //             if (state.currentState!.validate()) {
//                   //               strategyName = value;
//                   //               Navigator.push(
//                   //                 context,
//                   //                 MaterialPageRoute(
//                   //                   builder: (context) =>
//                   //                       SearchPair_Page(strategyName: strategyName),
//                   //                 ),
//                   //               );
//                   //             }
//                   //           },
//                   //           child: const Text('Ok'),
//                   //         ),
//                   //         TextButton(
//                   //           onPressed: () {
//                   //             Navigator.pop(context);
//                   //           },
//                   //           child: const Text('Cancel'),
//                   //         ),
//                   //       ],
//                   //     );
//                   //   },
//                   // );
//
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) =>
//                           SearchPair_Page(strategyName: "strategyName"),
//                     ),
//                   );
//                 },
//               ),
//               const SizedBox(height: 10),
//               const Text(
//                 'All Strategies',
//                 style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 10),
//               _buildListState(ref, context),
//             ],
//           ),
//         ),
//       ),
//     );
//
//   }
//
//   Widget _buildListState(WidgetRef ref, BuildContext context) {
//     final strategiesState = ref.watch(StrategiesProvider);
//
//     if (strategiesState.isLoading) {
//       return const Center(child: CircularProgressIndicator());
//     }
//
//     if (strategiesState.strategieslist.isEmpty) {
//       return const Center(child: Text('No Strategies are Created'));
//     }
//
//     return _uiOfStrategiesList(strategiesState.strategieslist, ref, context);
//   }
//
//   Widget _uiOfStrategiesList(List<StrategiesModel> model, WidgetRef ref, BuildContext context) {
//     return ListView.builder(
//       physics: const ClampingScrollPhysics(),
//       shrinkWrap: true,
//       itemCount: model.length,
//       itemBuilder: (context, index) {
//         return Padding(
//           padding: const EdgeInsets.only(bottom: 8.0),
//           child: Card(
//             color: Colors.white,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                     child: Row(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Text(
//                             model[index].orderDetails!.symbol!,
//                             style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//                           ),
//                         ),
//                         SizedBox(width: 100,),
//                               IconButton(onPressed: (){
//
//                               }, icon: Icon(Icons.edit , size: 19,)),
//                               IconButton(onPressed: (){
//
//                               }, icon: Icon(Icons.copy , size: 19,)),
//                               IconButton(
//             onPressed: () {
//               final prov = ref.read(StrategiesProvider.notifier);
//               prov.removeStrategies(context, model[index].id);
//             },
//             icon: const Icon(Icons.delete , size: 19,),
//           ),
//                       ],
//                     )),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 8.0 , bottom: 6),
//                         child: SizedBox(
//                           child: ExpandableText(
//                                               '${model[index].orderDetails!.type} When ${strategyServices.getText(model[index].entryRuleModel)}',
//                                               style: const TextStyle(fontSize: 12),
//                                               expandText: 'more',
//                                               collapseText: 'less',
//                                               maxLines: 2,
//                                               linkColor: Colors.blue,
//                                             ),
//                         ),
//                       ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
//
//
