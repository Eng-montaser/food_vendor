import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_vendor/utils/FCITextStyles.dart';

class ClassicInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool obsecure;
  final bool enabled;
  final Widget suffixicon;
  final TextEditingController controller;
  final String initial;
  final int minLines; //Normal textInputField will be displayed
  final int maxLines;
  final FocusNode focusNode;
  final ValueChanged<String> onChanged;
  final ValueChanged<String> validate;
  final TextInputType inputType;
  const ClassicInputField(
      {Key key,
      this.hintText,
      this.icon = null,
      this.validate = null,
      this.suffixicon = null,
      this.obsecure = false,
      this.enabled = true,
      this.onChanged,
      this.inputType = TextInputType.text,
      this.initial = null,
      this.focusNode,
      this.controller,
      this.minLines = 1,
      this.maxLines = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(50),
      decoration: BoxDecoration(color: Color(0xffFFFFFF), boxShadow: [
        BoxShadow(
            blurRadius: .5,
            spreadRadius: .5,
            offset: Offset(0, 0),
            color: Colors.grey.withOpacity(.5))
      ]),
      margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(25)),
      //  padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(10)),
      child: Center(
        child: TextFormField(
          enabled: enabled,
          enableInteractiveSelection: true,
          controller: controller,
          keyboardType: inputType,
          validator: validate,
          initialValue: initial,
          obscureText: obsecure,
          onChanged: onChanged,
          maxLines: maxLines,
          minLines: minLines,
          focusNode: focusNode,

          decoration: InputDecoration(
            /* focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 1.5),
            ),*/
            hintText: hintText,
            border: InputBorder.none,
            prefixIcon: Icon(
              icon,
              color: Colors.black,
            ),
            hintStyle: FCITextStyle(color: Colors.grey[400]).normal18(),
          ),

          // onChanged: onSearchTextChanged,
        ),
      ),
    );
  }
}
