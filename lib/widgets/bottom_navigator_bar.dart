import 'package:cakeapp/constant/constants.dart';
import 'package:cakeapp/screens/home.dart';
import 'package:flutter/material.dart';

class BottomNavigatorBarScreen extends StatefulWidget {
  const BottomNavigatorBarScreen({super.key});

  @override
  State<BottomNavigatorBarScreen> createState() => _HomeBarState();
}

class _HomeBarState extends State<BottomNavigatorBarScreen> {
  int selectedIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    Container(color: Colors.green),
    Container(color: Colors.blue),
    Container(color: Colors.yellow),
  ];

  void ontapBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(splashFactory: NoSplash.splashFactory),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: cakeColor().bottomBarBackgroundColor,
          onTap: ontapBottomBar,
          currentIndex: selectedIndex,
          selectedItemColor: cakeColor().selectedColor,
          unselectedItemColor: cakeColor().iconColor,
          selectedLabelStyle: TextStyle(
              color: cakeColor().iconColor,
              fontSize: 16,
              fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(
              color: cakeColor().iconColor,
              fontSize: 16,
              fontWeight: FontWeight.bold),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_grocery_store,
                size: 30,
              ),
              label: "Shop",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 30,
              ),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              label: "User",
            ),
          ],
        ),
      ),
    );
  }
}
