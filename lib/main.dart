import 'package:flutter/material.dart';

void main() {
  runApp(DynamicTabBar());
}

class DynamicTabBar extends StatefulWidget {
  const DynamicTabBar({Key? key}) : super(key: key);

  @override
  State<DynamicTabBar> createState() => _DynamicTabBarState();
}

class _DynamicTabBarState extends State<DynamicTabBar> {
  List<String> myOrderTab = [
    'All',
    'Accept',
    'Dispatch',
    'Delevered',
    'Rejected',
    'Customer FeedBack'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: myOrderTab.length,
        child: Scaffold(
            appBar: AppBar(
                bottom: TabBar(
                    isScrollable: true,
                    tabs: myOrderTab.map((e) {
                      return Tab(text: e);
                    }).toList()))),
      ),
    );
  }
}
