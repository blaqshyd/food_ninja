// ignore_for_file: prefer_const_constructors
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:food_ninja/constants/screens_dir.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // final bool myThemes = false;
  @override
  void initState() {
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushNamed(
        context,
        onboardingRoute,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Positioned(
            // width: double.infinity,
            child: Image.asset('assets/images/dark_pattern.png'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset('assets/images/logo_light.png'),
              ),
              SizedBox(height: 40.h),
              CircularProgressIndicator(color: primaryColor),
            ],
          ),
        ],
      ),
    );
  }
}
