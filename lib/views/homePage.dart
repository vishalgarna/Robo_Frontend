import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/Widgets/customWidgets.dart';
import 'package:practice/views/importantFunction_Page.dart';
import '../Utils/StradegyCreatetion_Utilities.dart';
import '../providers/websocketProvider.dart';
import 'orderPlace.view.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                size: 29,
              ),
            ),
          ),
        ],
        title: const Text('Symbols'),
      ),
      body: Column(
    mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: customButtonWidgets(width: 300 ,title: 'ImportantFunction', callback: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>importanFunctionPage(pairName: "add")));
              },),
            ),
          ),
          Expanded(child: loadSymbols())
        ],
      ),
    );
  }
  
  
  // Widget GetdataFromProvider (BuildContext context ,WidgetRef ref){
  //   final pricesAsyncValue = ref.watch(pricesProvider);
  //   return  pricesAsyncValue.when(
  //     data: (prices) {
  //       return loadSymbols();
  //     },
  //     loading: () => const Center(child: CircularProgressIndicator()),
  //     error: (error, stack) {
  //       CustomSnackbar.show(context, error.toString(), Colors.red);
  //       return Center(child: Text('Error: $error'));
  //     },
  //   );
  // }

  Widget loadSymbols() {
    return ListView.separated(
      itemCount: strategyServices.foresPairs.length,
      itemBuilder: (context, index) {
        String symbol = strategyServices.foresPairs[index];
        double price = strategyServices.prices[index];
        return ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => orderplaced(symbol: symbol),
              ),
            );
          },
          title: Text(symbol),
          trailing: Text(
            price.toString(),
            style: const TextStyle(fontSize: 15),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(height: 3);
      },
    );
  }
}
