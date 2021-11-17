import 'package:flutter/material.dart';

class PageBackGround extends StatelessWidget {
  final Widget _widget;

  const PageBackGround(this._widget);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/background.png',
                  ),
                  alignment: Alignment.centerLeft)),
          child: _widget),
    );
  }
}
