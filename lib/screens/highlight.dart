// ignore_for_file: unused_element

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rental_app/screens/bag_items_screen.dart';
import 'package:rental_app/screens/home_screen.dart';
import 'package:rental_app/screens/profile_screen.dart';
import 'package:rental_app/screens/searchbar_screen.dart';

import '../../screens/all_catagory_screen.dart';
import '../widgets/colors.dart';

class highlight extends StatefulWidget {
  const highlight({super.key});

  @override
  State<highlight> createState() => _highlightState();
}

class _highlightState extends State<highlight> {
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
      body: CurvedNavigationBar(
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
            Icon(Icons.search),
            Icon(MdiIcons.viewGridOutline),
            Image.asset(
              "assets/images/shopping.png",
              color: Colors.white,
              height: 22,
              width: 22,
            ),
            Icon(MdiIcons.account),
          ],
          onTap: (index) => setState(() {
                index = _selectedIndex;
              })),
    );
  }
}
