
import 'package:flutter/material.dart';
import 'package:rental_app/widgets/colors.dart';
import 'package:rental_app/widgets/homescren_widgets/heading.dart';

import '../widgets/homescren_widgets/product_catagory.dart';
import '../widgets/homescren_widgets/selected_catagory_products.dart';
import '../widgets/homescren_widgets/trending_products.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      // bottomNavigationBar: Theme(
      //     data: Theme.of(context)
      //         .copyWith(iconTheme: IconThemeData(color: Colors.white)),
      //     child: BottomNavbar()),
      backgroundColor: MyColors.myBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 50.0, 30, 0),
          child: Container(
            child: Column(
              children: [
                Heading(),
                SizedBox(
                  height: 22,
                ),
                ProductCatagory(),
                SizedBox(
                  height: 26,
                ),
                TrendingProducts(),
                SizedBox(
                  height: 40,
                ),
                SelectedCatagoryProducts(),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
