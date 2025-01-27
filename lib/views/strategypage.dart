import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/Widgets/allStrategyWidgets.dart';
import 'package:practice/providers/Providers.dart'; // Ensure correct import

class StrategyPage extends ConsumerStatefulWidget {
  const StrategyPage({super.key});

  @override
  _StrategyPageState createState() => _StrategyPageState();
}
class _StrategyPageState extends ConsumerState<StrategyPage> {
  bool isloading = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, fetchStrategies); // Delay the fetch to avoid modifying provider during build
  }

  Future<void> fetchStrategies() async {
    final prov = ref.read(StrategiesProvider.notifier); // Correct method to read provider
    await prov.getStategies(); // Call the async function
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Strategies'),
      ),
      body: AllStrategyWidget(),
    );
  }
}
