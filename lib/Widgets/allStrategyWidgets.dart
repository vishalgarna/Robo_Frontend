import 'package:flutter/material.dart';
import 'package:practice/pages/searchPairpage.dart';

import 'customButtonWidgets.dart';

class allStrategyWidget extends StatelessWidget {
  const allStrategyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customButtonWidgets(title: 'create strategy',width: 350, callback: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>serachPair()));
            },),
           const SizedBox(
              height: 20,
              child: Text('all strategies' , style: TextStyle(fontSize: 12),),
            ),
           const Center(child: Text('no strategy ar show '))
          ],
        ),
      ),
    );
  }
}
