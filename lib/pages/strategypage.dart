import 'package:flutter/material.dart';

import '../Widgets/allScannerWidget.dart';
import '../Widgets/allStrategyWidgets.dart';

class StrategyPage extends StatefulWidget {
  const StrategyPage({super.key});

  @override
  State<StrategyPage> createState() => _StrategyPageState();
}

late TabController _tabController;
class _StrategyPageState extends State<StrategyPage>with SingleTickerProviderStateMixin {
  
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
   _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title:const  Text('strategies'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'strategy',),
            Tab(text: 'scanners',),


        ],),
      ),
body: TabBarView(
  controller: _tabController,
    children: const [
      allStrategyWidget(),
      allScannersWidget()
]),
    ));
  }

}
