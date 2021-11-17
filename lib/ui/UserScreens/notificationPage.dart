/*
 *               *                    *
 *              * *                  * *
 *             *   *                *   *
 *            * * * *              * * * *
 *           *        *           *       *
 *         ***        ***       ***       ***
 *       Copyright (c) 2021 ِAhmed Ashour
 *      ahmedflutter5590@gmail.com
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_vendor/models/OrderData.dart';
import 'package:food_vendor/utils/constants.dart';

class NotificationPage extends StatefulWidget {
  @override
  _HomeScreenPage createState() => _HomeScreenPage();
}

class _HomeScreenPage extends State<NotificationPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Notifications",
            style: TextStyle(
                color: Colors.black87,
                fontSize: ScreenUtil().setSp(18),
                fontFamily: ''),
          ),
          iconTheme: IconThemeData(
            color: Colors.black87,
          ),
          leading: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(Icons.menu)),
        ),
        //drawer: myDrawer(),
        body: Container(
            child: ListView.builder(
                itemCount: orderExamples.length,
                itemBuilder: (context, index) => SizedBox())));
  }

  Drawer myDrawer() {
    return Drawer(
        child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            arrowColor: Colors.white,
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/apple.png'),
              foregroundImage: AssetImage('assets/images/apple.png'),
            ),
            /*  accountEmail: Text('jane.doe@example.com'),
                accountName: Text(
                  'Jane Doe',
                  style: TextStyle(fontSize: 24.0),
                ),*/
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            margin:
                EdgeInsets.symmetric(horizontal: ScreenUtil().setHeight(30)),
          ),
          ListTile(
            dense: true,
            horizontalTitleGap: 0,
            leading: Icon(
              Icons.shopping_basket_sharp,
              color: orangeColor,
              size: ScreenUtil().setSp(20),
            ),
            title: Text(
              'Orders',
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(18),
                  fontFamily: '',
                  color: Colors.black54),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => NotificationPage(),
                ),
              );
            },
          ),
          ListTile(
            dense: true,
            horizontalTitleGap: 0,
            leading: Icon(
              Icons.pie_chart_sharp,
              color: primaryColor,
              size: ScreenUtil().setSp(20),
            ),
            title: Text(
              'Earnings',
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(18),
                  fontFamily: '',
                  color: Colors.black54),
            ),
            onTap: () {
              /*Navigator.pushReplacement(
    context,
    MaterialPageRoute<void>(
    builder: (BuildContext context) => const MyHomePage(
    title: 'Apartments',
    ),
    ),
    );*/
            },
          ),
          ListTile(
            dense: true,
            horizontalTitleGap: 0,
            leading: Icon(
              Icons.notifications,
              color: greenColor,
              size: ScreenUtil().setSp(20),
            ),
            title: Text(
              'Notification',
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(18),
                  fontFamily: '',
                  color: Colors.black54),
            ),
            onTap: () {
              /*Navigator.pushReplacement(
    context,
    MaterialPageRoute<void>(
    builder: (BuildContext context) => const MyHomePage(
    title: 'Apartments',
    ),
    ),
    );*/
            },
          ),
          ListTile(
            dense: true,
            horizontalTitleGap: 0,
            leading: Icon(
              Icons.power_settings_new_sharp,
              color: orangeColor,
              size: ScreenUtil().setSp(20),
            ),
            title: Text(
              'Profile',
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(18),
                  fontFamily: '',
                  color: Colors.black54),
            ),
            onTap: () {
              /*Navigator.pushReplacement(
    context,
    MaterialPageRoute<void>(
    builder: (BuildContext context) => const MyHomePage(
    title: 'Apartments',
    ),
    ),
    );*/
            },
          ),
          Divider(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: Text(
              "v2.0.3",
              style: TextStyle(color: Colors.black54),
            ),
          )
        ],
      ),
    ));
  }
}
