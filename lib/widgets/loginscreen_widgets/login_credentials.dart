import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../screens/login_screen.dart';
import '../../utils/routes.dart';
import '../colors.dart';

class LoginCredentials extends StatelessWidget {
  const LoginCredentials({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                filled: true,
                fillColor: Color.fromRGBO(204, 204, 204, 0.19),
                hintText: "Email or Phone number",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromRGBO(240, 240, 240, 0.1), width: 10),
                  borderRadius: BorderRadius.circular(13),
                ))),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () => Navigator.of(context).pushNamed(MyRoute.otpVerifyRoute),
          child: Container(
            height: 45,
            width: context.screenWidth,
            decoration: BoxDecoration(
                color: MyColors.myPrimaryColor,
                borderRadius: BorderRadius.circular(38)),
            child: "Request OTP".text.white.make().centered(),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        OrDivider(),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 45,
                width: 70,
                child: "G".text.bold.white.xl3.make().centered(),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: MyColors.myButtonColor,
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 45,
                width: 70,
                child: "f".text.bold.white.xl3.make().centered(),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: MyColors.myfbButtonColor,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account ? ",
              style: TextStyle(color: MyColors.myCaptionColor),
            ),
            GestureDetector(
                onTap: () =>
                    Navigator.of(context).pushNamed(MyRoute.signUpRoute),
                child: Text(
                  "Sign-Up",
                  style: TextStyle(color: MyColors.myButtonColor),
                ))
          ],
        )
      ],
    );
  }
}
