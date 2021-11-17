import 'dart:async';

import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_vendor/ui/UserScreens/homePage.dart';
import 'package:food_vendor/ui/auth/signup.dart';
import 'package:food_vendor/utils/FCITextStyles.dart';
import 'package:food_vendor/utils/constants.dart';
import 'package:food_vendor/utils/utils.dart';
import 'package:food_vendor/widgets/classic_button.dart';
import 'package:food_vendor/widgets/classic_input_field.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  /// ******* Data Variables ********
  UserType _userType = UserType.user;
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  ///********************************
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
//        padding: EdgeInsets.only(
//            left: MediaQuery.of(context).size.width / 3 -
//                ScreenUtil().setWidth(35),
//            right: ScreenUtil().setWidth(10)),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: ScreenUtil().setHeight(35),
              ),
              Image(
                  image: AssetImage(
                    "assets/images/apple.png",
                  ),
                  height: ScreenUtil().setHeight(150),
                  width: size.width * 2 / 3),
              SizedBox(
                height: ScreenUtil().setHeight(25),
              ),
              ClassicInputField(
                hintText: "email".tr(),
                icon: Icons.mail,
              ),
              SizedBox(
                height: ScreenUtil().setHeight(25),
              ),
              ClassicInputField(
                hintText: "password".tr(),
                obsecure: true,
                icon: Icons.lock,
              ),
              SizedBox(
                height: ScreenUtil().setHeight(15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "forgot".tr(),
                      style: FCITextStyle(color: primaryColor)
                          .normal18()
                          .copyWith(fontFamily: ''),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SignUpPage()));
                    },
                    child: Text(
                      "signup".tr(),
                      style: FCITextStyle(color: primaryColor)
                          .normal18()
                          .copyWith(fontFamily: ''),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: ScreenUtil().setHeight(30),
              ),
              ClassicButton(
                onTap: () {
                  Utils.showLoading();
                  Timer(Duration(seconds: 3), () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomePage()));
                    BotToast.closeAllLoading();
                  });
                },
                text: "login".tr(),
                color: primaryColor,
                width: ScreenUtil().setWidth(200),
                height: ScreenUtil().setHeight(40),
              )
            ],
          ),
        ),
      ),
    );
  }
}
