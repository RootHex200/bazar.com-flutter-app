import 'package:cl_listing/screens/add_screen.dart';
import 'package:cl_listing/screens/chat_screen.dart';
import 'package:cl_listing/src/features/product/products/presentation/view/home_screen.dart';
import 'package:cl_listing/screens/profile_screen.dart';
import 'package:cl_listing/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {

  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    HomeScreen(),
    AddScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: GNav(
          haptic: true, // haptic feedback
          curve: Curves.easeOutExpo, // tab animation curves
          duration: Duration(milliseconds: 900), // tab animation duration
          gap: 8, // the tab button gap between icon and text
          activeColor: AppColors.appPrimaryColor, // selected icon and text color
          iconSize: 24, // tab button icon size
          tabBackgroundColor: AppColors.appWhiteColor, // selected tab background color
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16), // navigation bar padding
          selectedIndex: _selectedIndex,
          onTabChange: _onItemTapped,
          tabs: [
            GButton(
              icon: LineIcons.home,
              text: 'Home',
            ),
            GButton(
              icon: LineIcons.plus,
              text: 'Add',
            ),
            GButton(
              icon: LineIcons.rocketChat,
              text: 'Chat',
            ),
            GButton(
              icon: LineIcons.user,
              text: 'Profile',
            )
          ]
      ),
    );
  }
}
