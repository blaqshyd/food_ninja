// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../constants/screens_dir.dart';

class AuthProcessWidget extends StatelessWidget {
  final Function()? onPressed;
  final String title;
  final List<Widget> authWidget;
  const AuthProcessWidget({
    required this.authWidget,
    required this.title,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Image.asset('assets/images/pattern1.png'),
        ),
        Positioned(
          left: 16,
          top: 60,
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: backButtonBgColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset('assets/images/back_ios.png'),
            ),
          ),
        ),
        Padding(
          padding: defaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 90),
              sizedHeight50,
              Text(
                title,
                style: mainTextStyle,
              ),
              sizedHeight20,
              Text(
                'This data will be displayed in your account\nprofile for security',
                style: mainTextStyle.copyWith(fontSize: 14),
              ),
              sizedHeight40,
              Column(children: authWidget),
            ],
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 80,
          child: Padding(
            padding: defaultPadding,
            child: ButtonWidget(
              backgroundColor: primaryColor,
              onPressed: onPressed,
              // buttonText: 'Next',
              child: Text("Next"), // I need to fix this
            ),
          ),
        ),
      ],
    );
  }
}
