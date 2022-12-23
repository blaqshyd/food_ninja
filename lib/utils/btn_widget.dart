// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants/textsTyles.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    this.onLastPage,
    this.pageViewController,
    this.backgroundColor,
    required this.buttonText,
    this.style,
    required this.icon,
    this.onPressed,
  }) : super(key: key);

  final bool? onLastPage;
  final PageController? pageViewController;
  final Color? backgroundColor;
  final TextStyle? style;
  final String buttonText;
  final Widget icon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: icon,
      label: Text(
        buttonText,
        style: style,
      ),
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 30),
        minimumSize: Size.fromHeight(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        backgroundColor: backgroundColor,
        textStyle: mainTextStyle.copyWith(fontSize: 14),
      ),
      onPressed: onPressed,
    );
  }
}
