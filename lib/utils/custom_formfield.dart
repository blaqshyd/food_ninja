// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_ninja/constants/colors.dart';
import 'package:food_ninja/constants/textstyles.dart';
import 'package:hexcolor/hexcolor.dart';

import 'my_formfield.dart';

class CustomFormField extends StatelessWidget {
  final String? inputHint;
  final TextStyle? inputHintStyle;
  final IconButton? suffixIcon, prefixIcon;
  final Color? inputFillColor;
  final List<BoxShadow>? boxShadow;
  final bool? obscureText;
  const CustomFormField({
    Key? key,
    this.inputHint,
    this.inputFillColor,
    this.inputHintStyle,
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText,
    this.boxShadow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: boxShadow),
      child: MyFormField(
        inputTextStyle: mainTextStyle.copyWith(
          fontSize: 16,
        ),
        inputHint: inputHint,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        obscureText: obscureText,
        inputHintStyle: inputHintStyle,
        inputFilled: true,
        inputFillColor: inputFillColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
