import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/colors.dart';

class AllCatagoryScreen extends StatelessWidget {
  const AllCatagoryScreen({super.key});

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
                      "All Catagories",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: "Inter"),
                    ),
                  ],
                ),
                MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  removeBottom: true,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: GridView.count(
                      mainAxisSpacing: 28,
                      crossAxisSpacing: 28,
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 3,
                      childAspectRatio: 0.8,
                      shrinkWrap: true,
                      children: [
                        for (int i = 1; i < 9; i++)
                          Container(
                            height: 130,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    width: 0.5,
                                    color: Colors.grey.withOpacity(0.5)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      //spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(0, 1)),
                                ]),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 12),
                                  child: Image.asset(
                                    "assets/images/home_row_cloth.png",
                                    height: 60,
                                    width: 50,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Cloth",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
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
