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

import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_vendor/utils/FCITextStyles.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class MediaPickDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        content: Container(
          height: ScreenUtil().setHeight(150),
          child: Material(
            color: Colors.white,
            animationDuration: Duration(milliseconds: 500),
            elevation: 0.0,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                    onTap: () async {
                      var image = await ImagePicker.platform
                          .pickImage(source: ImageSource.camera);
                      if (image != null)
                        Navigator.pop(context, File(image.path));
                    },
                    child:
                        buttonWidget(text: "Camera", icon: Icons.camera_alt)),
                GestureDetector(
                    onTap: () async {
                      var image = await ImagePicker.platform
                          .pickImage(source: ImageSource.gallery);
                      if (image != null)
                        Navigator.pop(context, File(image.path));
                    },
                    child: buttonWidget(text: "Gallery", icon: Icons.image)),
              ],
            ),
          ),
        ));
  }

  Widget buttonWidget({String text, IconData icon}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: FCIColors.primaryColor(), width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              width: ScreenUtil().setWidth(80),
              height: ScreenUtil().setHeight(100),
              child: Column(
                children: [
                  SizedBox(
                    height: ScreenUtil().setHeight(20),
                  ),
                  Icon(
                    icon,
                    size: ScreenUtil().setSp(40),
                    color: FCIColors.primaryColor(),
                  ),
                  Text(
                    text,
                    maxLines: 1,
                    style: FCITextStyle().normal16(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
