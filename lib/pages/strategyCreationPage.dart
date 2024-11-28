import 'package:flutter/material.dart';
import 'package:practice/Utils/StradegyCreatetion_Utilities.dart';
import 'package:practice/pages/strategypage.dart';

class StrategyCreationPage extends StatefulWidget {

String  ? pairName ;
  StrategyCreationPage({super.key, required this.pairName});

  @override
  State<StrategyCreationPage> createState() => _StrategyCreationPageState();
}

class _StrategyCreationPageState extends State<StrategyCreationPage> {
  String ? selectedvalueType ;


  @override
  Widget build(BuildContext context) {

    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title:  Text(widget.pairName!),

      ),
          body:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
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
                                backgroundColor: selectedvalueType == 'BUY'
                                    ? Colors.blue.shade200
                                    : Colors.white70,
                                minimumSize: const Size(150, 50),
                                padding: const EdgeInsets.symmetric(horizontal: 30),
                              ),
                              onPressed: () {
                                setState(() {
                                  selectedvalueType = 'BUY';
                                });
                              },
                              child:const  Text('Buy'),
                            ),
                          ),
                          const SizedBox(width: 10), // Add space between buttons
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: selectedvalueType == 'SELL'
                                    ? Colors.red.shade200
                                    : Colors.white70,
                                minimumSize: const Size(150, 50),
                              ),
                              onPressed: () {
                                setState(() {
                                  selectedvalueType = 'SELL';
                                });
                              },
                              child: const Text('Sell'),
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
                                child: Text('Unit' , style: TextStyle(fontSize: 17),),
                              ),
                              SizedBox(

                                width: 100,
                                height: 50,
                                child: TextField(
                                  controller: strategyServices.qtyController,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10), // Add space between columns
                         Expanded(
                          child: Column(

                            children: [
                             const  Text('Timeframe'),
                              // Changed text for
                              const SizedBox(height: 10,),
                              DropdownButton(
                                hint: Text(strategyServices.selectedTimeframe ?? "interval"),
                                  items: strategyServices.timeframes.map((time){
                                return DropdownMenuItem(child:  Text(time) , value: time,);
                              }).toList(), onChanged: (newtime){

                                    setState(() {
                                      if(newtime != null){
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

                  const Text('StradetyBuilder'),
                  _StrtegyBuilder(),
                  SizedBox(
                    height: 100,
                    child: Row(
                      children: [
                        Expanded(
                            child: ElevatedButton(
                                onPressed: (){
                                  SnackBar(
                                    content: const Text('strategy deploy sucessfully'),
                                    backgroundColor: Colors.green.shade400,
                                    dismissDirection: DismissDirection.up,
                                    margin: const EdgeInsets.all(8),
                                    
                                  );
                                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const StrategyPage()), (Route<dynamic>routes)=>false);

                        }, child: const Text('deploy'))),
                        Expanded(child: ElevatedButton(onPressed: (){

                        }, child: const Text('BackTest')))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
    ));
  }
Widget _StrtegyBuilder () {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(

        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(14)
        ),
        height: 250,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // first indicators selectio ka drop down
             Row(
               // crossAxisAlignment: CrossAxisAlignment.start,
               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 DropdownButton(
                   hint: Text(strategyServices.selectedIndicator ?? "indiactors/close" ),
                     items:strategyServices.indicators.map((indicator){
                   return DropdownMenuItem(child: Text(indicator) , value:  indicator,);
                 }).toList() , onChanged: (cngIndicator){
                   setState(() {
                     strategyServices.selectedIndicator = cngIndicator!;
                     strategyServices.initailizeControlers(cngIndicator, strategyServices.selectedIndicator);

                   });
                 }),

                 if(strategyServices.selectedIndicator !=null)
                 ...strategyServices.indicatorParmeter[strategyServices.selectedIndicator]!.map((indicator){
                   return Expanded(child: Padding(
                     padding: const EdgeInsets.all(16.0),
                     child: TextField(
                       controller: strategyServices.controlersMap[strategyServices.selectedIndicator]![indicator],
                       decoration:  const InputDecoration(
                         border: OutlineInputBorder(


                             )
                         )
                       ),

                     ),
                   );
                 })
               ],
             ),
              // this is comdition driop down
              DropdownButton(
                  hint: Text(strategyServices.selectedCondition ?? "condition"),
                  items:strategyServices.conditions.map((condition){
                    return DropdownMenuItem(child: Text(condition) , value:  condition,);
                  }).toList() , onChanged: (cngCondition){
                setState(() {
                  strategyServices.selectedCondition = cngCondition!;
                });
              }),
              // this second inicators dropdown
              Row(
                children: [
                  DropdownButton(
                      hint: Text(strategyServices.selectedIndicator2 ?? "indiactors/value/close"),
                      items:strategyServices.indicators.map((indicator){
                        return DropdownMenuItem(child: Text(indicator) , value:  indicator,);
                      }).toList() , onChanged: (cngIndicator){
                    setState(() {
                      if(cngIndicator !=null) {
                        strategyServices.selectedIndicator2 = cngIndicator;
                      }
                    });
                  }),

                  if(strategyServices.selectedIndicator2 !=null)
                      ...strategyServices.indicatorParmeter[strategyServices
                        .selectedIndicator2]!.map((indicator) {
                      return Expanded(child: Padding(
          padding: const EdgeInsets.all(16),
                        child: TextField(
                          controller: strategyServices
                              .controlersMap[strategyServices
                              .selectedIndicator2]?[indicator],
                          decoration:  const InputDecoration(
                              border: OutlineInputBorder(
                                // borderRadius: BorderRadius.circular(17)
                              )
                          ),

                        ),
                      ));
                    })

                ],
              ),
            ],
          ),
        ),
        ),
    );
}


}



