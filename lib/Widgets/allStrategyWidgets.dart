import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/Utils/StradegyCreatetion_Utilities.dart';
import 'package:practice/Utils/notifier/strategieNotifier.dart';
import 'package:practice/Widgets/Edit_strategy_page.dart';
import 'package:practice/models/strategymodel/strategies_model.dart';
import 'package:practice/providers/Providers.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:practice/services/ApiServices.dart';
import '../models/strategiesHelpermodel/orderDetailsmodel.dart';
import '../views/searchPairpage.dart';
import 'customWidgets.dart';

class AllStrategyWidget extends ConsumerWidget {

  late String strategyName;
  final GlobalKey<FormState> state = GlobalKey<FormState>();
  AllStrategyWidget({super.key});

  final api_services = ApiServices();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customButtonWidgets(
              title: 'Create Strategy',
              width: 350,
              callback: () async {
                // showDialog
                //   (
                //   context: context,
                //   builder: (context) {
                //     return AlertDialog(
                //       backgroundColor: Colors.white,
                //       title: const Text(
                //         "Strategy Name",
                //         style: TextStyle(fontSize: 19),
                //       ),
                //       content: Form(
                //         key: state,
                //         child: TextFormField(
                //           controller: _controller,
                //           autovalidateMode: AutovalidateMode.onUserInteraction,
                //           validator: (value) {
                //             String newValue = value!.trim();
                //             if (newValue.isEmpty) {
                //               return 'Please Enter Name';
                //             }
                //             return null;
                //           },
                //         ),
                //       ),
                //       actions: [
                //         TextButton(
                //           onPressed: () {
                //             String value = _controller.text.trim();
                //             if (state.currentState!.validate()) {
                //               strategyName = value;
                //               Navigator.push(
                //                 context,
                //                 MaterialPageRoute(
                //                   builder: (context) =>
                //                       SearchPair_Page(strategyName: strategyName),
                //                 ),
                //               );
                //             }
                //           },
                //           child: const Text('Ok'),
                //         ),
                //         TextButton(
                //           onPressed: () {
                //             Navigator.pop(context);
                //           },
                //           child: const Text('Cancel'),
                //         ),
                //       ],
                //     );
                //   },
                // );
                final pairListProv = ref.read(pairListProvider.notifier);
                strategyServices.resetStrings();
                pairListProv.restPair();

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SearchPairPage(strategyName: "strategyName"),
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            const Text(
              'All Strategies',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildListState(ref, context),
          ],
        ),
      ),
    );
  }

  Widget _buildListState(WidgetRef ref, BuildContext context) {
    final strategiesState = ref.watch(StrategiesProvider);


    if (strategiesState.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (strategiesState.strategieslist.isEmpty) {
      return const Center(child: Text('No Strategies are Created'));
    }

    return _uiOfStrategiesList(strategiesState.strategieslist, ref, context);
  }

  Widget _uiOfStrategiesList(List<StrategiesModel> model, WidgetRef ref, BuildContext context) {

    final prov  = ref.read(StrategiesProvider.notifier);
    final strategiesState = ref.watch(StrategiesProvider);
    return ListView.builder(
      physics: const ClampingScrollPhysics(),
      shrinkWrap: true,
      itemCount: model.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Card(
            color: Colors.grey.shade50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            model[index].strategyName!,
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(width: 85,),
                        IconButton(onPressed: (){
                          addingComponent(ref, model[index].entryRuleModel!);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Edit_Strategy(model: model[index])));
                        }, icon: const Icon(Icons.edit , size: 19,)),
                        IconButton(onPressed: (){

                        //   duplicate function
                          StrategiesModel newModel = StrategiesModel
                            (
                            userId: "674f044539c250120a20854e",
                            strategyName: "new Strategy",
                            timeframe: model[index].timeframe,
                            description: "This iS testing",
                            deployed: true,
                            entryRuleModel: model[index].entryRuleModel,
                            orderDetails: model[index].orderDetails,

                          );

                         
                          prov.addStrategies(newModel);

                        }, icon: const Icon(Icons.copy , size: 19,)),
                        IconButton(
                          onPressed: () {
                            prov.removeStrategies(context, model[index].id);
                          },
                          icon: const Icon(Icons.delete , size: 19,),
                        ),
                      ],
                    )),

                ListTile(
                  title:ExpandableText(
                    '${model[index].orderDetails!.type} When ${strategyServices.getText(model[index].entryRuleModel)} of ${model[index].orderDetails!.symbol}',
                    style: const TextStyle(fontSize: 12),
                    expandText: 'more',
                    collapseText: 'less',
                    maxLines: 2,
                    linkColor: Colors.blue,
                  ),

                  trailing: SizedBox(
                    height: 40,
                    width: 50,
                    child: Transform.scale(
                      scale: 0.7,
                      child:strategiesState.isLoading ? const CircularProgressIndicator() : Switch(
                          value: model[index].deployed!, onChanged:  (newvalue)async{

                          // yaaha me humne new strategymodel banay hai aur new selcteste thisgs ko store karek strategy ko updaea kar ra hai
                          var orderDetailsModel = OrderDetailsModel(
                              type: model[index].orderDetails!.type,
                              symbol: model[index].orderDetails!.symbol,
                              volume: model[index].orderDetails!.volume,
                              stopLoss: model[index].orderDetails!.stopLoss,
                              takeProfit: model[index].orderDetails!.takeProfit);


                          final newmodel = StrategiesModel(
                              userId: '674f044539c250120a20854e',
                              deployed: newvalue,
                              orderDetails: orderDetailsModel,
                              timeframe: model[index].timeframe,
                              strategyName: model[index].strategyName,
                              description: '',
                              entryRuleModel: model[index].entryRuleModel);
                          final practiceProvider = ref.read(Practice_Provider.notifier);
                          final strategyProvider = ref.watch(StrategiesProvider.notifier);
                          practiceProvider.clearComponents();
                         await strategyProvider.updateStrategies(newmodel, model[index].id!).timeout(
                              const Duration(seconds: 10),
                              onTimeout: () => false);
                          strategyProvider.getStategies();

                          // if (newvalue) {
                          //   CustomSnackbar.show(
                          //       context, "deployed true",
                          //       Colors.green);
                          // }
                          // else {
                          //   CustomSnackbar.show(
                          //       context, "deployed false",
                          //       Colors.red);
                          // }

                        }
                        ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        );
      },
    );
  }
  void addingComponent(WidgetRef ref, List entryRuleModel) {
    final prov = ref.read(Practice_Provider.notifier);
    entryRuleModel.forEach((object) {
      if (object["type"] == "indicator") {
        Indicator indicator = Indicator(
          name: object["name"],
          defaultParameters: Map.from(object["parameters"]),
        );
        prov.addComponents(IndicatorWidget(
          indicator: indicator,
          initialParameters: Map.from(object["parameters"]),
        ));
      } else if (object["type"] == "condition") {
        prov.addComponents(ConditionWidget(type: object["name"]));
      } else if (object["type"] == "logicalOperator") {
        prov.addComponents(LogicalOperatorWidget(type: object["name"]));
      }
    });
  }

}