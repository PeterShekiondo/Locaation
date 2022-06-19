import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location/homeScreens/account.dart';
import 'package:location/homeScreens/location.dart';
import 'package:location/homeScreens/mainScreen.dart';

class Navigation extends StatefulWidget {
 static const List pages = [
    MainScreen(),
    Location(title: "My location"),
    Account(),
  ];
  const Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  static const List pages = [
    MainScreen(),
    Location(title: "My location"),
    Account(),
  ];
  int currentIndex = 0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[0],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black45,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "sample"),
          BottomNavigationBarItem(icon: Icon(Icons.location_on), label: "sample"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "sample"),
        ],
      ),
    );
  }
}