import 'package:cakeapp/screens/single_items.dart';
import 'package:cakeapp/screens/splash.dart';
import 'package:cakeapp/widgets/bottom_navigator_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.transparent),
          scaffoldBackgroundColor: Colors.white),
    );
  }
}
