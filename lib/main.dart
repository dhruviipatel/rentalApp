import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rental_app/screens/business_signup_screen.dart';
import 'package:rental_app/screens/catagorywise_viewall_screen.dart';
import 'package:rental_app/screens/home_screen.dart';
import 'package:rental_app/screens/intro_scren.dart';
import 'package:rental_app/screens/login_screen.dart';
import 'package:rental_app/screens/otp_verify_screen.dart';
import 'package:rental_app/screens/signup_screen.dart';
import 'package:rental_app/screens/trending_viewall_screen.dart';
import 'package:rental_app/utils/routes.dart';
import 'package:rental_app/widgets/colors.dart';
import 'package:rental_app/screens/searchbar_screen.dart';
import 'package:rental_app/widgets/homescren_widgets/bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Rental App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: MyColors.myPrimaryColor,
          appBarTheme: AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.light,
            ),
          ),
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => IntroScreen(),
          MyRoute.loginRoute: (context) => LoginScreen(),
          MyRoute.homeRoute: (context) => HomeScreen(),
          MyRoute.signUpRoute: (context) => SignUpScreen(),
          MyRoute.businessSignUpRoute: (context) => BusinessSignUpScreen(),
          MyRoute.otpVerifyRoute: (context) => OtpverifyScreen(),
          MyRoute.trendingProductsRoute: (context) => TrendingViewallScreen(),
          MyRoute.selectedCatagoryProductsRoute: (context) =>
              CatagorywiseViewallScreen(),
          MyRoute.searchbarRoute: (context) => SearchbarScreen(),
          MyRoute.bottomNavbarRoute: (context) => BottomNavbar1(),
        });
  }
}
