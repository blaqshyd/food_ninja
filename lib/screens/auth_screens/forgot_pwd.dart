// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_ninja/constants/screens_dir.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AuthProcessWidget(
      authWidget: [
        Container(
          alignment: Alignment.center,
          height: 110,
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
            color: lightScaffoldBgColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: ListTile(
              leading: Image.asset('assets/images/Icon-Message.png'),
              title: Text(
                '+234 *** *** 1234',
                style: mainTextStyle.copyWith(
                  fontSize: 18,
                ),
              ),
              subtitle: Text(
                'Via SMS:',
                style: mainTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ),
        sizedHeight30,
        Container(
          alignment: Alignment.center,
          height: 110,
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
            color: lightScaffoldBgColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: ListTile(
              leading: Image.asset('assets/images/Icon-Email.png'),
              title: Text(
                'ayo...@gmail.com',
                style: mainTextStyle.copyWith(
                  fontSize: 18,
                ),
              ),
              subtitle: Text(
                'Via Email:',
                style: mainTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ),
      ],
      title: 'Forgot Password?',
      onPressed: () => Navigator.pushNamed(context, resetPasswordRoute),
    ));
  }
}
