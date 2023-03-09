import 'package:flutter/material.dart';

class ProductCatagory extends StatelessWidget {
  const ProductCatagory({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 130,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border:
                    Border.all(width: 0.5, color: Colors.grey.withOpacity(0.5)),
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
          SizedBox(
            width: 18,
          ),
          Container(
            height: 130,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border:
                    Border.all(width: 0.5, color: Colors.grey.withOpacity(0.5)),
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
                    "assets/images/electronic.png",
                    height: 60,
                    width: 50,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Electronic",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            width: 18,
          ),
          Container(
            height: 130,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border:
                    Border.all(width: 0.5, color: Colors.grey.withOpacity(0.5)),
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
                    "assets/images/event.png",
                    height: 60,
                    width: 50,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Events",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            width: 18,
          ),
          Container(
            height: 130,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border:
                    Border.all(width: 0.5, color: Colors.grey.withOpacity(0.5)),
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
                    "assets/images/appliances.png",
                    height: 60,
                    width: 50,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Appliances",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            width: 18,
          ),
          Container(
            height: 130,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border:
                    Border.all(width: 0.5, color: Colors.grey.withOpacity(0.5)),
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
                    "assets/images/vehicle.png",
                    height: 60,
                    width: 50,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Vehicle",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            width: 18,
          ),
          Container(
            height: 130,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border:
                    Border.all(width: 0.5, color: Colors.grey.withOpacity(0.5)),
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
                    "assets/images/construction.png",
                    height: 60,
                    width: 50,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Construction",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
