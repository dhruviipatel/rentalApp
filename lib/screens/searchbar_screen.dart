import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/colors.dart';

class SearchbarScreen extends StatelessWidget {
  const SearchbarScreen({super.key});

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
                      "Search",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: "Inter"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  cursorColor: Color(0xff787575),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(204, 204, 204, 0.19),
                      hintText: "Search",
                      suffixIcon: Icon(Icons.search),
                      suffixIconColor: Color(0xff787575),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: BorderSide(
                            color: Color.fromRGBO(204, 204, 204, 0.3),
                            width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: BorderSide(
                            color: Color.fromRGBO(204, 204, 204, 0.3),
                            width: 1),
                      )),
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
