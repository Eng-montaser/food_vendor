import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_vendor/utils/FCITextStyles.dart';

class LabeledInputField extends StatelessWidget {
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
  const LabeledInputField(
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
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(10.0),
            ),
            labelText: hintText.tr(),
            labelStyle: FCITextStyle(color: Colors.grey[800]).normal18(),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            )),
        /*decoration: new InputDecoration(
          hintText: hintText.tr(),
          hintStyle: focusNode == null
              ? FCITextStyle().normal16()
              : FCITextStyle(color: Colors.red).normal16(),
          labelStyle: FCITextStyle().normal16(),
          border: InputBorder.none,
        ),*/
        // onChanged: onSearchTextChanged,
      ),
    );
  }
}
