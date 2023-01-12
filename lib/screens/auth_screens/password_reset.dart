// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_ninja/constants/screens_dir.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthProcessWidget(
        authWidget: [
          CustomFormField(
            inputFillColor: lightScaffoldBgColor,
            inputHint: 'New Password',
            suffixIcon: Icon(Icons.visibility),
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
          sizedFormSpacing,
          CustomFormField(
            inputFillColor: lightScaffoldBgColor,
            inputHint: 'Confirm Password',
            suffixIcon: Icon(Icons.visibility),
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
        ],
        title: 'Reset your password\nhere',
        onPressed: () => Navigator.pushNamed(context, authResetCompleteRoute),
      ),
    );
  }
}
