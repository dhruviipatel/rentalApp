import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rental_app/utils/routes.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
        () => Navigator.of(context).pushNamed(MyRoute.loginRoute));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/images/intropage1.png",
            fit: BoxFit.cover,
            height: 155,
          ),
          Image.asset("assets/images/Rental_logo.png", height: 115, width: 200),
          Image.asset(
            "assets/images/intropage2.png",
            fit: BoxFit.cover,
            height: 155,
          ),
        ],
      ),
    );
  }
}
