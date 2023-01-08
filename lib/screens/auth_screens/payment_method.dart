// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../constants/screens_dir.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backgroundColor,
      body: AuthProcessWidget(
        title: 'Payment Method',
        authWidget: [
          ButtonWidget(
            backgroundColor: lightScaffoldBgColor,
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset('assets/images/paypal_logo.png'),
            ),
          ),
          sizedFormSpacing,
          ButtonWidget(
            backgroundColor: lightScaffoldBgColor,
            onPressed: () {},
            child: Image.asset('assets/images/visa_logo.png'),
          ),
          sizedFormSpacing,
          ButtonWidget(
            backgroundColor: lightScaffoldBgColor,
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset('assets/images/Payoneer_logo.png'),
            ),
          ),
        ],
        onPressed: () => Navigator.pushNamed(context, uploadFileRoute),
      ),
    );
  }
}
