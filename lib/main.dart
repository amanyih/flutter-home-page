// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:home_page/screens/help_screen.dart';
import 'package:home_page/screens/home_screen.dart';
import 'package:home_page/screens/profile_screen.dart';
import 'package:home_page/screens/transaction_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _screens = [
    HomeScreen(),
    TransactionScreen(),
    HelpScreen(),
    ProfileScreen()
  ];
  var _curIndex = 0;

  _changePage(index) {
    setState(() {
      _curIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                Color.fromRGBO(77, 57, 216, 1),
                Color.fromRGBO(22, 138, 237, 0.8)
              ])),
          child: SafeArea(
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: _screens[_curIndex],
              bottomNavigationBar: BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                currentIndex: _curIndex,
                type: BottomNavigationBarType.fixed,
                onTap: _changePage,
                items: [
                  BottomNavigationBarItem(
                      icon: Image.asset("assets/image/Home_icon.png"),
                      label: "Home"),
                  BottomNavigationBarItem(
                      icon: Image.asset("assets/image/Transction_icon.png"),
                      label: "Transaction"),
                  BottomNavigationBarItem(
                      icon: Image.asset("assets/image/Help_icon.png"),
                      label: "Help"),
                  BottomNavigationBarItem(
                      icon: Image.asset("assets/image/Profile_Icon.png"),
                      label: "Profile"),
                ],
              ),
            ),
          ),
        ));
  }
}
