// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '/constants/screens_dir.dart';

class OnboardingOne extends StatefulWidget {
  const OnboardingOne({super.key});

  @override
  State<OnboardingOne> createState() => _OnboardingOneState();
}

class _OnboardingOneState extends State<OnboardingOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 450,
              child: Image.asset('assets/images/onboarding1.png'),
            ),
            SizedBox(height: 30),
            Text(
              'Find your Comfort\nFood here',
              textAlign: TextAlign.center,
              style: mainTextStyle,
            ),
            SizedBox(height: 20),
            Text(
              'Here you can find a chef or dish for every\ntaste and color. Enjoy!',
              textAlign: TextAlign.center,
              style: mainTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
