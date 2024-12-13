import 'package:flutter/material.dart';
import 'package:practice/Widgets/closePositionWidgets.dart';
import 'package:practice/Widgets/openPositionWidgets.dart';
import 'package:practice/Widgets/pendingPositionWidget.dart';

class PositionPage extends StatefulWidget {
  const PositionPage({super.key});

  @override
  State<PositionPage> createState() => _PositionPageState();
}

class _PositionPageState extends State<PositionPage> with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
     _controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text('positions'),
     bottom: TabBar(
       controller: _controller,
         tabs: const [
           Tab(text: "pending"),
           Tab(text: "open"),
           Tab(text: "close"),
         ]),
    ),

      body: TabBarView(
        controller: _controller,
          children: const [
          pendingPositionWidget(),
            openPositionWidget(),
            closePositionWidget()
      ]),
    );
  }
}
