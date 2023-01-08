// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../../constants/screens_dir.dart';

class OnboardingTwo extends StatelessWidget {
  const OnboardingTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 450,
              child: Image.asset('assets/images/onboarding2.png'),
            ),
            SizedBox(height: 30),
            Text(
              'Food Ninja is Where Your\nComfort Food Lives',
              textAlign: TextAlign.center,
              style: mainTextStyle,
            ),
            SizedBox(height: 20),
            Text(
              'Enjoy a fast and smooth food delivery at\nyour doorstep',
              textAlign: TextAlign.center,
              style: mainTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            SizedBox(height: 42),
          ],
        ),
      ),
    );
  }
}
