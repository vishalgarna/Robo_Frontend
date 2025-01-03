import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/Utils/StradegyCreatetion_Utilities.dart';
import 'package:practice/Widgets/customWidgets.dart';
import 'package:practice/views/DefaultPage.dart';
import 'package:practice/views/backtesTingResultsView.dart';
import 'package:practice/views/strategypage.dart';

import '../copyFIle.dart';
import '../providers/strtegiesProvider.dart';


class StrategyCreationPage extends StatefulWidget {

String  ? pairName ;
String strategyName;

  StrategyCreationPage({super.key, required this.pairName , required this.strategyName});

  @override
  _StrategyCreationPageState createState() => _StrategyCreationPageState();
}

class _StrategyCreationPageState extends State<StrategyCreationPage> {

  bool deploysetloading = false;
  bool Backtestsetloading = false;

 late List<Map<dynamic , dynamic>> entryCondition ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        actions: [Padding(
          padding: const EdgeInsets.all( 8.0),
          child: TextButton(onPressed: () {
            strategyServices.resetStrings();
            Navigator.pushAndRemoveUntil(context,
                MaterialPageRoute(builder: (context) => Defaultpage()), (
                    Route<dynamic>routes) => false);
          }, child: const Text('cancel', style: TextStyle(fontSize: 19),)),
        )
        ],
        title: Text(widget.pairName!, style: const TextStyle(fontSize: 17),),

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: SizedBox(
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
                customButtonWidgets( width : 350, title: 'Entry Condition', callback: () async{

                 entryCondition  = await Navigator.push(context, MaterialPageRoute(builder: (context)=>StrategyBuilderScreen())) ?? [];
                 print("vxgfhbn $entryCondition");
                }, colors: Colors.grey.shade400,),
                // CardConditionWidgets(selectedCondition: "",),
                // CardCon        ditionWidgets(selectedCondition: "Exit",),
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
                          child: customButtonWidgets(title: 'deploy',
                              loading: deploysetloading,
                              callback: () async {
                                setState(() {
                                  deploysetloading = true;
                                });

                                // callstrtegies creation function from strataservices  return true and false
                                final provider = ref.watch(Practice_Provider.notifier);

                                provider.clearComponents();
                                bool  success = await strategyServices.callStrategiesfunction(widget.pairName!, "deploy" , entryCondition ?? [] ).timeout(Duration(seconds: 10) , onTimeout: ()=> false) ?? false;
                                if (success) {
                                  setState(() {
                                    deploysetloading = false;
                                  });
                                  CustomSnackbar.show(
                                      context, "successfully created ",
                                      Colors.green);
                                }
                                else {
                                  CustomSnackbar.show(
                                      context, "Error during create strategy",
                                      Colors.red);
                                }

                                final prov = ref.read(
                                    StrategiesProvider.notifier);
                                await prov.getStategies(context);

                                Navigator.pushAndRemoveUntil(context,
                                    MaterialPageRoute(builder: (
                                        context) => Defaultpage()), (
                                        Route<dynamic>routes) => false);
                              }),
                        );
                      },),

                      Expanded(
                        child: customButtonWidgets(
                          loading: Backtestsetloading,
                            title: 'backTest',
                            callback: ()async {
                         //    setState(() {
                         //      Backtestsetloading = true;
                         //    });
                         // BackTestingModel  ? model = await strategyServices.callStrategiesfunction(widget.pairName!, "backTest" ,);
                         // setState(() {
                         //   Backtestsetloading = false;
                         // });
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BackTestResultPage( strategyName: widget.strategyName, )));
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


class CardConditionWidgets extends StatefulWidget {
  final String selectedCondition;

  CardConditionWidgets({super.key, required this.selectedCondition});

  @override
  State<CardConditionWidgets> createState() => _CardConditionWidgetsState();
}

class _CardConditionWidgetsState extends State<CardConditionWidgets> {
  bool isExpand = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            title: Text(
              widget.selectedCondition == "Exit" ? "Exit Condition" : "Entry Condition",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            trailing: Switch( value: isExpand, onChanged: (bool value) {
              setState(() {
                isExpand = value;
              });

            },
            ),
          ),
          const Divider(height: 0, thickness: 0.9),
          isExpand
              ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(14),
              ),
              height: 250,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // First indicators selection drop down
                    Row(
                      children: [
                        customDropDownButton(
                          strategyServices.indicators,
                          "indicators/close/values",
                          widget.selectedCondition == "Exit"
                              ? strategyServices.ExitSelectedIndicator
                              : strategyServices.EntrySelectedIndicator,
                          widget.selectedCondition == "Exit"
                              ? "ExitSelectedIndicator"
                              : "EntrySelectedIndicator",
                              (String? value) {
                            setState(() {
                              if (widget.selectedCondition == "Exit") {
                                strategyServices.ExitSelectedIndicator = value;
                              } else {
                                strategyServices.EntrySelectedIndicator = value;
                              }
                            });
                          },
                        ),
                        if ((widget.selectedCondition == "Exit"
                            ? strategyServices.ExitSelectedIndicator
                            : strategyServices.EntrySelectedIndicator) !=
                            null)
                          ...?strategyServices
                              .indicatorParameters[
                          widget.selectedCondition == "Exit"
                              ? strategyServices.ExitSelectedIndicator
                              : strategyServices.EntrySelectedIndicator]
                              ?.map(
                                (indicator) {
                              return Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    controller: strategyServices
                                        .controllersMap[
                                    widget.selectedCondition == "Exit"
                                        ? "ExitSelectedIndicator"
                                        : "EntrySelectedIndicator"]?[indicator],
                                    decoration: InputDecoration(
                                      labelText: indicator,
                                      border: const OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                      ],
                    ),
                    widget.selectedCondition == "Exit" ?
                    customDropDownButton(
                      strategyServices.conditions,
                      "condition",
                      strategyServices.ExitSelectedCondition,
                      "",
                          (String? value) {
                        setState(() {
                          strategyServices.ExitSelectedCondition = value;
                        });
                      },
                    ) :     customDropDownButton(
                      strategyServices.conditions,
                      "condition",
                      strategyServices.EntrySelectedCondition,
                      "",
                          (String? value) {
                        setState(() {
                          strategyServices.EntrySelectedCondition = value;
                        });
                      },
                    ) ,
                    Row(
                      children: [
                        customDropDownButton(
                          strategyServices.indicators,
                          "indicators/close/value",
                          widget.selectedCondition == "Exit"
                              ? strategyServices.ExitSelectedIndicator2
                              : strategyServices.EntrySelectedIndicator2,
                          widget.selectedCondition == "Exit"
                              ? "ExitSelectedIndicator2"
                              : "EntrySelectedIndicator2",
                              (String? value) {
                            setState(() {
                              if (widget.selectedCondition == "Exit") {
                                strategyServices.ExitSelectedIndicator2 = value;
                              } else {
                                strategyServices.EntrySelectedIndicator2 = value;
                              }
                            });
                          },
                        ),
                        if ((widget.selectedCondition == "Exit"
                            ? strategyServices.ExitSelectedIndicator2
                            : strategyServices.EntrySelectedIndicator2) !=
                            null)
                          ...?strategyServices
                              .indicatorParameters[
                          widget.selectedCondition == "Exit"
                              ? strategyServices.ExitSelectedIndicator2
                              : strategyServices.EntrySelectedIndicator2]
                              ?.map(
                                (indicator) {
                              return Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    controller: strategyServices
                                        .controllersMap[
                                    widget.selectedCondition == "Exit"
                                        ? "ExitSelectedIndicator2"
                                        : "EntrySelectedIndicator2"]?[indicator],
                                    decoration: InputDecoration(
                                      labelText: indicator,
                                      border: const OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
              : Container(),
        ],
      ),
    );
  }
}
