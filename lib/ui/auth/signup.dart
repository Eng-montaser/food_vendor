import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_vendor/utils/constants.dart';
import 'package:food_vendor/widgets/classic_button.dart';
import 'package:food_vendor/widgets/classic_input_field.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUpPage> {
  /// ******* Data Variables ********
  UserType _userType = UserType.user;
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _confirmPasswordController =
      new TextEditingController();

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
                hintText: "name".tr(),
                icon: Icons.person,
              ),
              SizedBox(
                height: ScreenUtil().setHeight(25),
              ),
              ClassicInputField(
                hintText: "email".tr(),
                icon: Icons.mail,
                inputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: ScreenUtil().setHeight(25),
              ),
              ClassicInputField(
                hintText: "phone".tr(),
                icon: Icons.check,
                inputType: TextInputType.emailAddress,
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
                height: ScreenUtil().setHeight(25),
              ),
              ClassicInputField(
                hintText: "cpassword".tr(),
                obsecure: true,
                icon: Icons.lock,
              ),
              SizedBox(
                height: ScreenUtil().setHeight(45),
              ),
              ClassicButton(
                onTap: () {},
                text: "signup".tr(),
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
