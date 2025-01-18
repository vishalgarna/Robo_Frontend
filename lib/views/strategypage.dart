import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/Widgets/allScannerWidget.dart';
import 'package:practice/Widgets/allStrategyWidgets.dart';
import 'package:practice/providers/Providers.dart'; // Ensure correct import

class StrategyPage extends ConsumerStatefulWidget {
  const StrategyPage({super.key});

  @override
  _StrategyPageState createState() => _StrategyPageState();
}

late TabController _tabController;

class _StrategyPageState extends ConsumerState<StrategyPage> with SingleTickerProviderStateMixin {
  bool isloading = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    Future.delayed(Duration.zero, fetchStrategies); // Delay the fetch to avoid modifying provider during build
  }

  Future<void> fetchStrategies() async {
    final prov = ref.read(StrategiesProvider.notifier); // Correct method to read provider
    await prov.getStategies(); // Call the async function
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Strategies'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Strategy'),
            Tab(text: 'Scanners'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          AllStrategyWidget(),
          const allScannersWidget(),
        ],
      ),
    );
  }
}
