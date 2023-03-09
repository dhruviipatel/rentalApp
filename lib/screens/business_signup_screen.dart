import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/routes.dart';
import '../widgets/colors.dart';

class BusinessSignUpScreen extends StatelessWidget {
  const BusinessSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.myPrimaryColor,
        elevation: 0.0,
        title: Text("Sign Up",
            style: TextStyle(
                fontSize: 18,
                fontFamily: "Inter",
                fontWeight: FontWeight.bold,
                color: Colors.white)),
      ),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height / 2,
              color: MyColors.myPrimaryColor,
              child: Padding(
                  padding: const EdgeInsets.only(bottom: 350),
                  child: Container()),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 45, 30, 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Create a Business Account",
                          style: TextStyle(
                              fontFamily: "inter",
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Sign up with your mobile number",
                            style: TextStyle(
                                color: MyColors.myCaptionColor, fontSize: 16)),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                            child: Column(
                          children: [
                            TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    filled: true,
                                    fillColor:
                                        Color.fromRGBO(204, 204, 204, 0.19),
                                    hintText: "Enter Your phone number",
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromRGBO(
                                              240, 240, 240, 0.1),
                                          width: 10),
                                      borderRadius: BorderRadius.circular(13),
                                    ))),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () => Navigator.of(context)
                                  .pushNamed(MyRoute.otpVerifyRoute),
                              child: Container(
                                height: 45,
                                width: context.screenWidth,
                                decoration: BoxDecoration(
                                    color: MyColors.myPrimaryColor,
                                    borderRadius: BorderRadius.circular(38)),
                                child:
                                    "Request OTP".text.white.make().centered(),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Already have an account ? ",
                                  style:
                                      TextStyle(color: MyColors.myCaptionColor),
                                ),
                                GestureDetector(
                                    onTap: () => Navigator.of(context)
                                        .pushNamed(MyRoute.loginRoute),
                                    child: Text(
                                      "Sign-In",
                                      style: TextStyle(
                                          color: MyColors.myButtonColor),
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Are you a customer?",
                              style: TextStyle(color: MyColors.myCaptionColor),
                            ),
                            GestureDetector(
                                onTap: () => Navigator.of(context)
                                    .pushNamed(MyRoute.signUpRoute),
                                child: Text(
                                  "Create Your Customer Account",
                                  style:
                                      TextStyle(color: MyColors.myButtonColor),
                                ))
                          ],
                        ))
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
