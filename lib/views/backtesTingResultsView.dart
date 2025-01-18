import 'package:flutter/material.dart';
import 'package:practice/models/backTestingmodel/backTestingModel.dart';

class BackTestResultPage extends StatelessWidget {
  BackTestingModel ? model;
  String ? strategyName;

  BackTestResultPage({super.key, this.model, this.strategyName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(strategyName ??"backtest_results"),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    title: Text('Sbin'),
                    subtitle: Text('TotalOrders : 124}'),
                    trailing: Text('PNL : -7485', style: TextStyle(fontSize: 15,
                        color: 45 > 0 ? Colors.green : Colors.red),),
                    // leading: Text('W|L : 10 | 18'),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildData() {
    return const SizedBox(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                ],

              ),
              Column(
                children: [
                ],

              )
            ],
          )
          ,
        ),
      ),
    );
  }
}
