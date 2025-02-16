import 'package:flutter/material.dart';
import 'package:practice/Utils/StradegyCreatetion_Utilities.dart';
import 'package:practice/models/backTestingmodel/backTestingModel.dart';
import 'package:practice/models/strategymodel/strategies_model.dart';

import '../models/strategiesHelpermodel/orderDetailsmodel.dart';

class BackTestResultPage extends StatelessWidget {
  List<String> pairList;
  List ? entryCondition;

  BackTestResultPage(
      {super.key, required this.pairList, required this.entryCondition});

  Future<BackTestingModel ?> fetchResults() async {
    try {
      final orderdetailsmodel = OrderDetailsModel(
          type: strategyServices.EntryselectedAction ?? " ",
          symbol: pairList,
          volume: 2,
          stopLoss: 2,
          takeProfit: 2);
      final newModel = StrategiesModel
        (
        userId: "674f044539c250120a20854e",
        strategyName: "new Strategy",
        timeframe: strategyServices.selectedTimeframe ?? '4h',
        description: "This iS testing",
        deployed: true,
        entryRuleModel: entryCondition ?? [],
        orderDetails: orderdetailsmodel,

      );
      BackTestingModel ? model = await strategyServices.services
          .BacktestResults(newModel);
      print(model);
      return model;

        // final Map<String, dynamic> jsonData = {
        //   "data": {
        //     "USDCHFm": {
        //       "afterTrade": 348,
        //       "initialAmount": 30,
        //       "slHit": 87,
        //       "totalTrades": 171,
        //       "tpHit": 84
        //     },
        //     "USDJPYm": {
        //       "afterTrade": -2,
        //       "initialAmount": 30,
        //       "slHit": 50,
        //       "totalTrades": 78,
        //       "tpHit": 28
        //     }
        //   },
        //   "message": "success",
        //   "investedAmount" : 1000,
        //   "PNL" : -500
        // };
        //
        // final backTestingModel = BackTestingModel.fromJson(jsonData);

        // print(backTestingModel);
        //
        // return backTestingModel;


    } catch (e) {
      print(e.toString());
      return null;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("backtest_results"),
      ),
      body:   FutureBuilder(future: fetchResults(), builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: LinearProgressIndicator(),);
        }
        else if (snapshot.hasError) {
          return  Text('ERROR: ${snapshot.hasError.toString()}');
        }
        else if (snapshot.hasData && snapshot.data != null) {
          BackTestingModel  data = snapshot.data!;
          // print(data);
          return buildData(data);
        }
        else {
          return const Center(child: Text("No data found."));
        }
      }),


    );
  }

  Widget buildData(BackTestingModel ? model) {

    var  data = model!.resultBacktesPairs;
    var pnl = (model.afterTrade - model.investedAmount);
    if (data == null || data.isEmpty) {
      return const Center(child: Text('No data available'));
    }

    return SingleChildScrollView(
     child : SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                      text: "investedAmount:  ",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: model.investedAmount.toString()
                        ),
                      ],
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      text: "PNL: ",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: pnl.toString(),
                          style: TextStyle(
                            color: pnl < 0 ? Colors.red : Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text.rich(
                TextSpan(
                  text: "AfterTrade:  ",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: model.afterTrade.toString()
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              height: 15,
            ),
            Column(
              children: data.entries.map((entry) {
                final tradeData = entry.value;
                if (tradeData == null) {
                  return Card(
                    child: ListTile(
                      title: Text(entry.key,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      subtitle: const Text('No data available for this entry'),
                    ),
                  );
                }
                return Column(
                  children: [
                    SizedBox(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text.rich(
                                      TextSpan(
                                        text: "symbol: ",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                        children: [
                                          TextSpan(
                                            text: entry.key,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text.rich(
                                      TextSpan(
                                        text: "type: ",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                        children: [
                                          TextSpan(
                                            text: strategyServices.EntryselectedAction,
                                            style: TextStyle(
                                                color: strategyServices.EntryselectedAction == "SELL"
                                                    ? Colors.red
                                                    : Colors.green,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text.rich(
                                      TextSpan(
                                        text: "TP | SL:  ",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                        children: [
                                          TextSpan(
                                            text:
                                            '${entry.value!.tpHit} | ${entry.value!.slHit}',
                                            style: const TextStyle(
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text.rich(
                                      TextSpan(
                                        text: "Trades:  ",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                        children: [
                                          TextSpan(
                                            text:
                                            entry.value!.totalTrades.toString(),
                                            style: const TextStyle(
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    ));
  }






}

