import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../screens/all_catagory_screen.dart';
import '../../screens/bag_items_screen.dart';
import '../../screens/home_screen.dart';
import '../../screens/profile_screen.dart';
import '../../screens/searchbar_screen.dart';
import '../colors.dart';

class BottomNavbar1 extends StatefulWidget {
  const BottomNavbar1({super.key});

  @override
  State<BottomNavbar1> createState() => _BottomNavbar1State();
}

class _BottomNavbar1State extends State<BottomNavbar1> {
  List Screens = [
    HomeScreen(),
    SearchbarScreen(),
    AllCatagoryScreen(),
    BagItemsScreen(),
    ProfileScreen()
  ];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
          color: MyColors.myPrimaryColor,
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: MyColors.myPrimaryColor,
          index: _selectedIndex,
          items: [
            Image.asset(
              "assets/images/Vector-5.png",
              color: Colors.white,
              height: 22,
              width: 22,
            ),
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            Icon(
              MdiIcons.viewGridOutline,
              color: Colors.white,
            ),
            Image.asset(
              "assets/images/shopping.png",
              color: Colors.white,
              height: 22,
              width: 22,
            ),
            Icon(
              MdiIcons.account,
              color: Colors.white,
            ),
          ],
          onTap: (index) => setState(() {
                _selectedIndex = index;
              })),
      body: Screens[_selectedIndex],
    );
  }
}
