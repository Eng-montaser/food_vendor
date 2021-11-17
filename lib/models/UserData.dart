import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class UserData {
  String token;
  bool isLogin;
  bool is_updated;
  String email;

  String name;
  String phone;
  String image;

  int role_id;
  int id;

  String nationality;
  UserData({
    this.token,
    this.is_updated,
    this.name,
    this.email,
    this.phone,
    this.role_id,
    this.image,
    this.nationality,
    this.id,
  });
  UserData.fromLoginJson(Map<String, dynamic> json) {
    token = json['token'];
    if (json['user'] != null) {
      is_updated = json['user']['is_updated'] == 1 ? true : false;
      name = json['user']['name'];
      email = json['user']['email'];
      phone = json['user']['phone'];
      role_id = json['user']['role_id'];
      image = json['user']['image'];

      nationality = json['user']['nationality'];

      id = int.parse('${json['user']['id']}');
//      image = "http://check-points.fsdmarketing.com/img/logo.jpg";
      //json['user']['image'];
    }
  }
  UserData.fromSearchJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    id = int.parse('${json['id']}');

    image = json['image'] != null ? json['image'] : null;
    //json['user']['image'];
  }
  updateUserData(Map<String, dynamic> json) {
    is_updated = json['is_updated'] == 0 ? true : false;
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    role_id = json['role_id'];
    image = json['image'];

    nationality = json['nationality'];
  }

  printUserData() {
    print("login");
    return "token $token\n"
        "is_updated$is_updated\n"
        "email$email\n"
        "name$name\n"
        "phone$phone\n"
        "image$image\n"
        "role_id$role_id\n"
        "nationality$nationality\n";
  }
}

/// Sign up
class AuthenticationData {
  String name;
  String email;
  String phone;
  String password;

  String nationality;

  AuthenticationData({
    this.email,
    this.name,
    this.password,
    this.phone,
    this.nationality,
  });
  getSignUpBody() {
    return {
      "name": name,
      "email": email,
      "password": password,
    };
  }

  getLoginBody() {
    return {"email": email, "password": password};
  }

  getUpdateBody() {
    return {
      "name": name,
      "phone": phone,
      "nationality": nationality,
    };
  }
}

class AuthenticationResult {
  bool success;
  String message;
  UserData data;
  AuthenticationResult({this.success, this.message, this.data});
  successMessage(context) {
    AwesomeDialog(
        context: context,
        animType: AnimType.LEFTSLIDE,
        headerAnimationLoop: false,
        dialogType: DialogType.SUCCES,
        dismissOnBackKeyPress: false,
        dismissOnTouchOutside: false,
        title: "loginTitle".tr(),
        desc: "loginDescSuccess".tr(),
        btnOkText: "ok".tr(),
        btnOkColor: Colors.red,
        btnOkOnPress: () {},
        onDissmissCallback: (type) {})
      ..show();
  }

  failMessage(context, mess) {
    AwesomeDialog(
        context: context,
        animType: AnimType.LEFTSLIDE,
        headerAnimationLoop: false,
        dialogType: DialogType.ERROR,
        dismissOnBackKeyPress: true,
        dismissOnTouchOutside: true,
        title: "loginTitle".tr(),
        desc: mess,
        btnOkText: "ok".tr(),
        btnOkColor: Colors.red,
        btnOkOnPress: () {},
        onDissmissCallback: (type) {})
      ..show();
  }

  successUpdateMessage(context) {
    AwesomeDialog(
        context: context,
        animType: AnimType.LEFTSLIDE,
        headerAnimationLoop: false,
        dialogType: DialogType.SUCCES,
        dismissOnBackKeyPress: false,
        dismissOnTouchOutside: false,
        title: "edittitle".tr(),
        desc: "editDescSuccess".tr(),
        btnOkText: "ok".tr(),
        btnOkColor: Colors.green,
        btnOkOnPress: () {},
        onDissmissCallback: (type) {})
      ..show();
  }

  failUpdateMessage(context) {
    AwesomeDialog(
        context: context,
        animType: AnimType.LEFTSLIDE,
        headerAnimationLoop: false,
        dialogType: DialogType.ERROR,
        dismissOnBackKeyPress: true,
        dismissOnTouchOutside: true,
        title: "edittitle".tr(),
        desc: "editDescFail".tr(),
        btnOkText: "ok".tr(),
        btnOkColor: Colors.green,
        btnOkOnPress: () {},
        onDissmissCallback: (type) {})
      ..show();
  }
}
