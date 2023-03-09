import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:rental_app/widgets/colors.dart";
import "../widgets/loginscreen_widgets/login_credentials.dart";

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    Size size = MediaQuery.of(context).size;
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (ctx, child) => Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: MyColors.myPrimaryColor,
            elevation: 0.0,
            title: Text("Sign In",
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
                    padding: const EdgeInsets.only(bottom: 200),
                    child: Container(),
                  ),
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
                              "Welcome Back",
                              style: TextStyle(
                                  fontFamily: "inter",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Enter your credential login",
                                style: TextStyle(
                                    color: MyColors.myCaptionColor,
                                    fontSize: 16)),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(204, 204, 204, 0.19),
                                    border: Border.all(
                                        color: Color.fromRGBO(
                                            204, 204, 204, 0.3))),
                                child: TabBar(
                                    indicator: BoxDecoration(
                                        color: MyColors.myButtonColor),
                                    labelColor: Colors.white,
                                    unselectedLabelColor: Colors.black,
                                    controller: tabController,
                                    tabs: [
                                      Tab(
                                        child: Text(
                                          "USER",
                                        ),
                                      ),
                                      Tab(
                                        child: Text(
                                          "PARTNER",
                                        ),
                                      )
                                    ])),
                            SizedBox(
                              height: 20,
                            ),
                            Expanded(
                              child: TabBarView(
                                  controller: tabController,
                                  children: [
                                    LoginCredentials(),
                                    LoginCredentials(),
                                  ]),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 8,
      child: Row(
        children: <Widget>[
          buildDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Or",
              style: TextStyle(
                  color: MyColors.myButtonColor, fontWeight: FontWeight.w500),
            ),
          ),
          buildDivider(),
        ],
      ),
    );
  }
}

Expanded buildDivider() {
  return Expanded(
      child: Divider(
    color: MyColors.myButtonColor,
  ));
}
