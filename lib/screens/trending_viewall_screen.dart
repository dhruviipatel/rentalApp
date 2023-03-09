import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';
import '../widgets/colors.dart';

class TrendingViewallScreen extends StatelessWidget {
  const TrendingViewallScreen({super.key});

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
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Text(
                      "Trending Products",
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
                    padding: const EdgeInsets.only(top: 20),
                    child: GridView.count(
                      mainAxisSpacing: 33,
                      crossAxisSpacing: 33,
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                      shrinkWrap: true,
                      children: [
                        for (int i = 1; i < 13; i++)
                          Container(
                            height: 70,
                            width: 74,
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
                                  padding: const EdgeInsets.only(top: 18),
                                  child: Container(
                                    height: 110,
                                    width: 115,
                                    decoration: BoxDecoration(
                                        color: MyColors.myBackgroundColor,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: Image.asset(
                                          "assets/images/machine.png",
                                          height: 50,
                                          width: 60,
                                        ).box.p12.make()),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 17),
                                  child: Text(
                                    NumberFormat.simpleCurrency(
                                            locale: 'hi-In', decimalDigits: 0)
                                        .format(2000),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: MyColors.myButtonColor),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3),
                                  child: Text(
                                    "Sewing Machine",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13,
                                    ),
                                  ),
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
