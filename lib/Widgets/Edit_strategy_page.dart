import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/Utils/StradegyCreatetion_Utilities.dart';
import 'package:practice/Widgets/customWidgets.dart';
import 'package:practice/models/strategymodel/strategies_model.dart';
import 'package:practice/views/DefaultPage.dart';
import 'package:practice/views/backtesTingResultsView.dart';
import '../copyFIle.dart';
import '../providers/Providers.dart';


class Edit_Strategy extends StatefulWidget {

 StrategiesModel model ;


  Edit_Strategy({super.key, required this.model});

  @override
  _Edit_StrategyState createState() => _Edit_StrategyState();
}

class _Edit_StrategyState extends State<Edit_Strategy> {

  bool deploysetloading = false;
  bool Backtestsetloading = false;
  String text = ' ';

  late List<Map<dynamic , dynamic>> entryCondition ;

  @override
  void initState() {
    super.initState();
    text = strategyServices.getText(widget.model.entryRuleModel);  // Initialize text as an empty string
    strategyServices.EntryselectedAction = widget.model.orderDetails!.type ;

    strategyServices.selectedTimeframe = widget.model.timeframe;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Padding(
          padding: const EdgeInsets.all( 8.0),
          child: TextButton(onPressed: () {
            strategyServices.resetStrings();
            Navigator.pop(context);
          }, child: const Text('cancel', style: TextStyle(fontSize: 19),)),
        )
        ],
        title: Text(widget.model.strategyName ?? "Edit_Strategy", style: const TextStyle(fontSize: 17),),

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(color: Colors.white),
                              backgroundColor: strategyServices.EntryselectedAction ==
                                  'BUY'
                                  ? Colors.green.shade300
                                  : Colors.white,
                              minimumSize: const Size(150, 50),
                              padding: const EdgeInsets.symmetric(horizontal: 30),
                            ),
                            onPressed: () {
                              setState(() {
                                strategyServices.EntryselectedAction = 'BUY';
                              });
                            },
                            child: const Text(
                                'Buy', style: TextStyle(fontSize: 22)),
                          ),
                        ),
                        const SizedBox(width: 10), // Add space between buttons
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(color: Colors.white),
                              backgroundColor: strategyServices.EntryselectedAction ==
                                  'SELL'
                                  ? Colors.red.shade300
                                  : Colors.white,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              setState(() {
                                strategyServices.EntryselectedAction = 'SELL';
                              });
                            },
                            child: const Text(
                              'Sell', style: TextStyle(fontSize: 22),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(

                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 16.0),
                              child: Text(
                                'Unit', style: TextStyle(fontSize: 17),),
                            ),
                            SizedBox(

                              width: 100,
                              height: 50,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                controller: strategyServices.qtyController,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10), // Add space between columns
                      Expanded(
                        child: Column(

                          children: [
                            const Text('Timeframe'),
                            // Changed text for
                            const SizedBox(height: 10,),
                            DropdownButton(
                                dropdownColor: Colors.grey.shade200,
                                hint: Text(strategyServices.selectedTimeframe ??
                                    "interval"),
                                items: strategyServices.timeframes.map((time) {
                                  return DropdownMenuItem(
                                    value: time, child: Text(time),);
                                }).toList(), onChanged: (newtime) {
                              setState(() {
                                if (newtime != null) {
                                  strategyServices.selectedTimeframe = newtime;
                                }
                              });
                            })

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // Your button condition check
                // In your widget build method

                if (text.isEmpty) customButtonWidgets(
                  width: 350,
                  title: 'Entry Condition',
                  callback: () async {
                    entryCondition = await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StrategyBuilderScreen())) ?? [];
                    setState(() {
                      text = strategyServices.getText(entryCondition);
                    });
                  },
                  colors: Colors.grey.shade400,
                ) else Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: ()async {
                      entryCondition = await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StrategyBuilderScreen()));
                      setState(() {
                        text = strategyServices.getText(entryCondition);
                      });
                    },
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                        const BorderSide(color: Colors.black45, width: 2),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8), // You can change the radius as needed
                        ),
                      ),
                    ),
                    child: Text(text),
                  ),
                )
                ,

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("StopLoss :"),
                                ),
                                SizedBox(
                                  height: 50,
                                  width: 200,
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder()
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("TakeProfit :"),
                              ),
                              SizedBox(
                                height: 50,
                                width: 200,
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: Row(
                    children: [

                      Consumer(builder: (BuildContext context, WidgetRef ref,
                          Widget? child) {
                        return Expanded(
                          child: customButtonWidgets(title: 'Save Changes',
                              loading: deploysetloading,
                              callback: () async
                              {
                                //   setState(() {
                                //     deploysetloading = true;
                                //   });
                                //
                                //   // callstrtegies creation function from strataservices  return true and false
                                //   final provider = ref.watch(Practice_Provider.notifier);
                                //
                                //   provider.clearComponents();
                                //   bool  success = await strategyServices.callStrategiesfunction("deploy" , entryCondition).timeout(const Duration(seconds: 10) , onTimeout: ()=> false) ?? false;
                                //   if (success) {
                                //     setState(() {
                                //       deploysetloading = false;
                                //     });
                                //     CustomSnackbar.show(
                                //         context, "successfully created ",
                                //         Colors.green);
                                //   }
                                //   else {
                                //     CustomSnackbar.show(
                                //         context, "Error during create strategy",
                                //         Colors.red);
                                //   }
                                //
                                //   final prov = ref.read(
                                //       StrategiesProvider.notifier);
                                //   await prov.getStategies();
                                //
                                //   Navigator.pushAndRemoveUntil(context,
                                //       MaterialPageRoute(builder: (
                                //           context) => Defaultpage()), (
                                //           Route<dynamic>routes) => false);
                                // }),
                              }
                              )

                        );
                      },),

                      Expanded(
                        child: customButtonWidgets(
                            loading: Backtestsetloading,
                            title: 'backTest',
                            callback: ()async {

                              Navigator.push(context, MaterialPageRoute(builder: (context)=>BackTestResultPage()));
                            }),
                      )
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget customDropDownButton(List<String> dropDownList,
    String defaultHintValue,
    String? selectedValue,
    String initializeIndicatorValue,
    Function(String?) callback
    ) {
  return DropdownButton<String>(
    dropdownColor: Colors.grey.shade200,
    hint: Text(selectedValue ?? defaultHintValue),
    value: selectedValue,
    items: dropDownList.map((indicator) {
      return DropdownMenuItem<String>(
        value: indicator,
        child: Text(indicator),
      );
    }).toList(),
    onChanged: (String? cngIndicator) {
      callback(cngIndicator); // Execute the callback function
      if (initializeIndicatorValue.isNotEmpty && cngIndicator != null) {
        strategyServices.initializeControllers(cngIndicator, initializeIndicatorValue);
      }
    },
  );
}



