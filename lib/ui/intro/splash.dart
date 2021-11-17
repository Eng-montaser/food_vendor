/*
 *
 *    *****   ******
 *    *   *       *
 *    *   *      *
 *    *   *     *
 *    *****    *****
 *
 * Created on Fri May 14 2021
 *
 * Copyright (c) 2021 Osman Suliman
 * oz.solomon99@gmail.com
 */
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_vendor/ui/auth/login.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () async {
//      Navigator.push(
//          context,
//          MaterialPageRoute(builder: (context) => LoginPage()));

      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => LoginPage()),
          (Route<dynamic> route) => false);
    });
//    WidgetsBinding.instance.addPostFrameCallback((_) =>
//        Provider.of<SplashProvider>(context, listen: false)
//            .checkLoginStatus(context));
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/splash.png'),
                fit: BoxFit.fill)),
        width: MediaQuery.of(context).size.width,
        height: height,
      ),
    );
  }
}
