import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "RENTAL",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: "Inter"),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                "assets/images/home_profile_image.png",
                height: 40.0,
                width: 40.0,
              ),
            )
          ],
        ),
        SizedBox(
          height: 22,
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
                    color: Color.fromRGBO(204, 204, 204, 0.3), width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13),
                borderSide: BorderSide(
                    color: Color.fromRGBO(204, 204, 204, 0.3), width: 1),
              )),
        ),
      ],
    );
  }
}
