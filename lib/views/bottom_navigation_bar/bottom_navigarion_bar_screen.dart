import 'package:discord/utils/constands/color_constands.dart';
import 'package:discord/views/home_screen/home_screen.dart';
import 'package:discord/views/notification_screen/hotificarion_screen.dart';
import 'package:discord/views/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  List screens = [HomeScreen(), NotificationScreen(), ProfileScreen()];
  int selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedTab],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: ColorConstands.mainwhite, // active color
          unselectedItemColor: ColorConstands.greyshade3,
          backgroundColor: ColorConstands.bottomNavbarcolor,
          currentIndex: selectedTab,
          onTap: (value) {
            setState(() {
              selectedTab = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.home,
                  color: ColorConstands.mainwhite,
                ),
                icon: Icon(
                  Icons.home,
                  color: ColorConstands.greyshade3,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.notifications,
                  color: ColorConstands.mainwhite,
                ),
                icon: Icon(
                  Icons.notifications,
                  color: ColorConstands.greyshade3,
                ),
                label: 'Notifications'),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.person_outlined,
                color: ColorConstands.mainwhite,
              ),
              icon: Icon(
                Icons.person_outlined,
                color: ColorConstands.greyshade3,
              ),
              label: 'Profile',
            ),
          ]),
    );
  }
}
