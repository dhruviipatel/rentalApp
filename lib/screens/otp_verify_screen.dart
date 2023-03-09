import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/routes.dart';
import '../widgets/colors.dart';

class OtpverifyScreen extends StatelessWidget {
  const OtpverifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.myPrimaryColor,
        elevation: 0.0,
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
                          "Phone Verification",
                          style: TextStyle(
                              fontFamily: "inter",
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Enter your OTP code here",
                            style: TextStyle(
                                color: MyColors.myCaptionColor, fontSize: 16)),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                            child: Column(
                          children: [
                            Form(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GetFocuse(),
                                GetFocuse(),
                                GetFocuse(),
                                GetFocuse(),
                              ],
                            )),
                            SizedBox(
                              height: 40,
                            ),
                            InkWell(
                              onTap: () => Navigator.of(context)
                                  .pushNamed(MyRoute.bottomNavbarRoute),
                              child: Container(
                                height: 45,
                                width: context.screenWidth,
                                decoration: BoxDecoration(
                                    color: MyColors.myPrimaryColor,
                                    borderRadius: BorderRadius.circular(38)),
                                child: "Verify".text.white.make().centered(),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
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

class GetFocuse extends StatefulWidget {
  const GetFocuse({
    super.key,
    this.onChanged,
    this.fillColor = const Color.fromRGBO(204, 204, 204, 0.17),
    this.focusColor = const Color.fromRGBO(223, 69, 62, 1),
  });
  final ValueChanged<String>? onChanged;
  final Color? fillColor;
  final Color? focusColor;

  @override
  State<GetFocuse> createState() => _GetFocuseState();
}

class _GetFocuseState extends State<GetFocuse> {
  late FocusNode _myFocusNode;
  final ValueNotifier<bool> _myFocusNotifier = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    _myFocusNode = FocusNode();
    _myFocusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    _myFocusNotifier.value = _myFocusNode.hasFocus;
  }

  @override
  void dispose() {
    _myFocusNode.removeListener(_onFocusChange);
    _myFocusNode.dispose();
    _myFocusNotifier.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _myFocusNotifier,
      builder: (_, isFocus, child) {
        return Container(
          height: 50,
          width: 50,
          child: TextFormField(
            showCursor: false,
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            focusNode: _myFocusNode,
            decoration: InputDecoration(
              filled: true,
              fillColor: isFocus ? widget.focusColor : widget.fillColor,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    width: 1.0,
                    color: Color.fromRGBO(240, 240, 240, 1),
                  )),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:
                      BorderSide(width: 1.0, color: MyColors.myButtonColor)),
            ),
            style: Theme.of(context).textTheme.headlineMedium,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        );
      },
    );
  }
}
