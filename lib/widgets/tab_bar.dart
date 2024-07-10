import 'package:cakeapp/constant/constants.dart';
import 'package:cakeapp/widgets/items_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
    Container(
      decoration: BoxDecoration(
          color: cakeColor().selectedColor,
          borderRadius: BorderRadius.circular(100)),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Tab(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.cake_outlined,
              ),
              Text(
                "Cake",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
          color: cakeColor().selectedColor,
          borderRadius: BorderRadius.circular(100)),
      padding: EdgeInsets.symmetric(horizontal: 1),
      child: Tab(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.donut_small_outlined,
              ),
              Text(
                "Donuts",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
          color: cakeColor().selectedColor,
          borderRadius: BorderRadius.circular(100)),
      padding: EdgeInsets.symmetric(horizontal: 1),
      child: Tab(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.cookie_outlined,
              ),
              Text(
                "Cookies",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ],
          ),
        ),
      ),
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
            indicatorColor: Colors.transparent,
            labelColor: Colors.white,
          ),
          Expanded(
            child: TabBarView(children: _kTabPage),
          ),
        ],
      ),
    );
  }
}
