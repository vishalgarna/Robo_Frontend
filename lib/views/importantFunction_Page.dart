import 'package:flutter/material.dart';
import 'package:practice/views/DefaultPage.dart';
import 'package:practice/views/orderPlace.view.dart';
import 'package:practice/views/searchPairpage.dart';

import '../Utils/StradegyCreatetion_Utilities.dart';
import '../Widgets/customWidgets.dart';

class importanFunctionPage extends StatefulWidget {
   String pairName;
   importanFunctionPage({super.key , required this.pairName});

  @override
  State<importanFunctionPage> createState() => _importanFunctionPageState();
}

class _importanFunctionPageState extends State<importanFunctionPage> {
  bool deploysetloading = false;
  bool Backtestsetloading = false;
  final qtyController = TextEditingController(text: '0.1');
  final sl_controller = TextEditingController();
  final tp_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Padding(
          padding: const EdgeInsets.all( 8.0),
          child: TextButton(onPressed: () {
            Navigator.pushAndRemoveUntil(context,
                MaterialPageRoute(builder: (context) => Defaultpage()), (
                    Route<dynamic>routes) => false);
          }, child: const Text('cancel', style: TextStyle(fontSize: 19),)),
        )
        ],
        title: const Text('importants' ,style: TextStyle(fontSize: 20),),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
            Row(
              children: [
                const Text("symbol:",style: TextStyle(fontSize: 20),),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchPairPage(strategyName: "infinite")));
                }, child: Text(widget.pairName , style: const TextStyle(fontSize: 15),)),
              ],
            ),
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
        
                    children: [
        
                       Expanded(child: SizedBox(
                       child: TextField(
                         keyboardType: TextInputType.number,
                         decoration: InputDecoration(
                           labelText: 'lots',
                             border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10)
                             )
                         ),
                       ),
                      )),
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("StopLoss :"),
                                ),
                                SizedBox(
                                  height: 50,
                                  width: 200,
                                  child: TextField(
                                    controller: sl_controller,
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(

                                        )
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("TakeProfit :"),
                              ),
                              SizedBox(
                                height: 50,
                                width: 200,
                                child: TextField(
                                  controller: tp_controller,
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
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
                      Expanded(
                          child: customButtonWidgets(title: 'Add',
                              loading: deploysetloading,
                              callback: () async {
                                setState(() {
                                  deploysetloading = true;
                                });
                                  var data = {
                                    "timeframe" : strategyServices.selectedTimeframe ?? "1h" ,
                                    "deployed" : true,
                                     "orderDetails" : {
                                      "symbol" : widget.pairName == "add" ? " " : widget.pairName,
                                       "type" : strategyServices.EntryselectedAction ?? " ",

                                       // "sl" : double.parse(sl_controller.text ?? 0.111),
                                       // "tp" : double.parse(tp_controller.text),
                                     }
                                  };
                                 bool result = await strategyServices.services.addImportan(data).timeout(const Duration(seconds: 10),onTimeout: ()=>false);

                                  setState(() {
                                    deploysetloading = false;
                                  });
                                  if(result) {
                                    CustomSnackbar.show(
                                        context, "successfully added ",
                                        Colors.green);
                                  }

                                  else{
                                    CustomSnackbar.show(
                                        context, "Error during add strategy",
                                        Colors.red);
                                  }
                                  strategyServices.resetStrings();
                                   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Defaultpage()), (Route<dynamic>routes)=>false);

                              }),
                        ),
        
                      Expanded(
                        child: customButtonWidgets(
                            loading: Backtestsetloading,
                            title: 'backTest',
                            callback: ()async {
        
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
