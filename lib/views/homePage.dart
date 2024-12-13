import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/Utils/StradegyCreatetion_Utilities.dart';
import '../providers/websocketProvider.dart';
import 'orderPlace.view.dart';  // Ensure correct path

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pricesAsyncValue = ref.watch(pricesProvider);

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
      body: pricesAsyncValue.when(
        data: (prices) {
          // Debug statement
          return loadSymbols(prices);
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) {
          CustomSnackbar.show(context, error.toString(), Colors.red);
          return Center(child: Text('Error: $error'));
        },
      ),
    );
  }

  Widget loadSymbols(Map<String, dynamic> prices) {
    return ListView.separated(
      itemCount: strategyServices.foresPairs.length,
      itemBuilder: (context, index) {
        String symbol = strategyServices.foresPairs[index];
        final price = prices[symbol];
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
            price?.toString() ?? 'Loading...',
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
