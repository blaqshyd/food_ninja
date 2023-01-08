// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../constants/screens_dir.dart';

class SignUpProcess extends StatelessWidget {
  const SignUpProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backgroundColor,
      body: AuthProcessWidget(
        title: 'Fill in your bio to get\nstarted',
        authWidget: <Widget>[
          CustomFormField(
            inputHint: 'First name',
          ),
          sizedFormSpacing,
          CustomFormField(
            inputHint: 'Last name',
          ),
          sizedFormSpacing,
          CustomFormField(
            inputHint: 'Mobile number',
          ),
        ],
        onPressed: () => Navigator.pushNamed(context, paymentMethodRoute),
      ),
    );
  }
}
