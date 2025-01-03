import 'package:flutter/material.dart';

import '../views/searchPairpage.dart';
import 'customWidgets.dart';

class allScannersWidget extends StatelessWidget {
  const allScannersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customButtonWidgets(title: 'create scanner',width: 350, callback: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchPair_Page(strategyName: "infinite",)));
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
