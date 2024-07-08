import 'package:cakeapp/widgets/items_view.dart';
import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  final _kTabPage = [
    const ItemsViewScreen(),
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
          TabBar(
            tabs: _kTabs,
            dividerColor: Colors.transparent,
          ),
          Expanded(
            child: TabBarView(children: _kTabPage),
          ),
        ],
      ),
    );
  }
}
