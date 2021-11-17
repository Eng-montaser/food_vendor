import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_vendor/utils/FCITextStyles.dart';

class ClassicButton extends StatelessWidget {
  final Function onTap;
  final Color color;
  final String text;
  final double width;
  final double height;
  const ClassicButton({
    Key key,
    this.onTap,
    this.color,
    this.text,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setWidth(20),
            vertical: ScreenUtil().setHeight(5)),
        decoration: BoxDecoration(
          color: color,
        ),
        child: Center(
          child: Text(
            text,
            style: FCITextStyle(color: Colors.white)
                .normal18()
                .copyWith(fontFamily: ''),
          ),
        ),
      ),
    );
  }
}
