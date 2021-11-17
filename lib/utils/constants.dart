import 'dart:ui';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///***************************************
///    Ahmed Ashour Constant             *
///***************************************
const String BaseUrl = 'http://hrms.fsdmarketing.com/api/v1/';

//String Culture = 'en';
const String MAPAPIKEY = 'AIzaSyCdVIteMWFxbV6WMKh-8FopoExTanQCCIg';
const String kLogo = "assets/images/logo_white.png";
const String kLogoBlack = "assets/images/logo_black.png";
/*const primaryColor = Color(0xff102030);
const accentColor = Color(0xff1a1b1d);
const lightColor = Color(0xffcccecd);*/
const primaryColor = Color(0xff5f71df);
const accentColor = Color(0xff77838f);
const greenColor = Color(0xff2ecd8a);
const blackColor = Color(0xff16294a);
const orangeColor = Color(0xfffc6343);
const buttonSOS = Color(0xff7b8d8d);
const buttonIncident = Color(0xffe53e3e);
const buttonFlash = Color(0xffbdc3c7);
const buttonAdd = Color(0xffb7c0ff);
const backgroundColor = Color(0xfff4f5f7);

/// Colors   ----------------------------------------
hexColor(String _colorHexCode) {
  String colornew = '0xff' + _colorHexCode;
  colornew = colornew.replaceAll('#', '');
  int colorInt = int.parse(colornew);
  return colorInt;
}

Color PrimaryColor = Color(0xff102030);
Color AccentColor = Color(0xff1a1b1d);

Widget loading() {
  return Center(
    child: Image.asset(
      'assets/images/loading.gif',
      width: ScreenUtil().setWidth(100),
      height: ScreenUtil().setHeight(100),
      fit: BoxFit.fill,
    ),
  );
}

Widget loadingTow(width) {
  return Center(
    child: Image.asset(
      'assets/images/loading.gif',
      width: ScreenUtil().setWidth(width),
      height: ScreenUtil().setWidth(width),
      fit: BoxFit.fill,
    ),
  );
}

String removeAllHtmlTags(String htmlText) {
  RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);

  return htmlText
      .replaceAll(exp, '\n')
      .replaceAll('\n\n', '\n')
      .replaceAll('\n\n', '\n');
}

showMessage(
  context,
  String title,
  String desc,
  bool success,
) {
  AwesomeDialog(
      context: context,
      animType: AnimType.LEFTSLIDE,
      headerAnimationLoop: false,
      dialogType: success ? DialogType.SUCCES : DialogType.ERROR,
      dismissOnBackKeyPress: false,
      dismissOnTouchOutside: false,
      title: title,
      desc: desc,
      btnOkText: "ok".tr(),
      btnOkColor: success ? Color(0xff00d164) : Colors.red,
      btnOkOnPress: () {},
      onDissmissCallback: (type) {})
    ..show();
}

enum AuthType { login, signUp }
bool emailIsValid(String email) {
  return !RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
}

enum UserType { user, service_provider }
