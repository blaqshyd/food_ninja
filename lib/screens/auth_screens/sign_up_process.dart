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
            inputFillColor: lightScaffoldBgColor,
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
            inputHint: 'Last name',
            inputFillColor: lightScaffoldBgColor,
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
            inputHint: 'Mobile number',
            inputFillColor: lightScaffoldBgColor,
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
        onPressed: () => Navigator.pushNamed(context, paymentMethodRoute),
      ),
    );
  }
}
