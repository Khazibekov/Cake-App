import 'package:flutter/material.dart';
import 'package:cakeapp/constant/constants.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  final _kTabPage = [
    const Center(
        child: Text("Cake",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ))),
    const Center(
        child: Text("Donuts",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ))),
    const Center(
        child: Text("Chookies",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ))),
  ];

  final _kTabs = [
    const Tab(
      icon: Icon(
        Icons.cake,
      ),
      text: "Cake",
    ),
    const Tab(
      icon: Icon(
        Icons.donut_small,
      ),
      text: "Donuts",
    ),
    const Tab(
      icon: Icon(
        Icons.cookie,
      ),
      text: "Cookies",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _kTabs.length,
      child: Column(
        children: [
          TabBar(tabs: _kTabs),
          Expanded(
            child: TabBarView(children: _kTabPage),
          ),
        ],
      ),
    );
  }
}
