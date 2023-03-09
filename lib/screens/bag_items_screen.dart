import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/routes.dart';
import '../widgets/colors.dart';

class BagItemsScreen extends StatelessWidget {
  const BagItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.myBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(28.0, 50.0, 28, 0),
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Bag Items",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: "Inter"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 85,
                ),
                Center(
                  child: Image.asset(
                    "assets/images/emptybag.png",
                    height: 170,
                    width: 170,
                  ),
                ),
                SizedBox(
                  height: 36,
                ),
                Center(
                  child: Text(
                    "Your bag is lonely",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 21),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text("Add some items to cheer it up",
                      style: TextStyle(fontSize: 15)),
                ),
                SizedBox(
                  height: 32,
                ),
                InkWell(
                  onTap: () => Navigator.of(context)
                      .pushNamed(MyRoute.bottomNavbarRoute),
                  child: Container(
                    height: 45,
                    width: context.screenWidth,
                    decoration: BoxDecoration(
                        color: MyColors.myPrimaryColor,
                        borderRadius: BorderRadius.circular(38)),
                    child: "Go To Home".text.white.make().centered(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
