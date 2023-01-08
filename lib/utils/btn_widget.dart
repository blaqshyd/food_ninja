// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../constants/screens_dir.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    this.onLastPage,
    this.pageViewController,
    this.backgroundColor,
    required this.child,
    // required this.buttonText,
    this.style,
    // this.icon,
    this.onPressed,
  }) : super(key: key);

  final bool? onLastPage;
  final PageController? pageViewController;
  final Color? backgroundColor;
  final TextStyle? style;
  final Widget child;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: lightSecondaryColor,
            blurRadius: 10.0,
            offset: Offset(0, 5),
          ),
          BoxShadow(
            color: lightSecondaryColor,
            blurRadius: 10.0,
            offset: Offset(-5, 0),
          ),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 30),
          minimumSize: Size.fromHeight(20),
          // minimumSize: Size(double.infinity, 80),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: backgroundColor,
          textStyle: mainTextStyle.copyWith(fontSize: 14),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
