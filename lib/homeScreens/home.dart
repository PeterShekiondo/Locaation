import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location/assets/colors/colors.dart';
import 'package:location/homeScreens/mainScreen.dart';
import 'package:location/homeScreens/location.dart';
import 'package:location/homeScreens/account.dart';


class Home extends StatefulWidget {
  static const List pages = [
    MainScreen(),
    Location(title: "My location"),
    Account(),
  ];
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 14,
        unselectedFontSize: 14,
        iconSize: 26,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: AppColors.mainColor,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 1,
        items: const [
          BottomNavigationBarItem(label:"Home", icon: Icon(Icons.apps)),
          BottomNavigationBarItem(label:"Location", icon: Icon(Icons.location_on)),
          BottomNavigationBarItem(label:"Account", icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
