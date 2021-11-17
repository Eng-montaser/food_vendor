import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

class Utils {
  static showLoading() {
    BotToast.showLoading(align: Alignment.topCenter);
  }

  static showNotification({String text, Color color}) {
    BotToast.showSimpleNotification(
        title: text,
        duration: Duration(seconds: 3),
        hideCloseButton: true,
        // align: Alignment.bottomCenter,
        titleStyle: TextStyle(color: Colors.white),
        backgroundColor: color);
  }
}
