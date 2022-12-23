// ignore_for_file: prefer_const_constructors
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:food_ninja/constants/colors.dart';
import 'package:food_ninja/constants/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
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
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 20,
            // width: double.infinity,
            child: Image.asset('assets/images/pattern.png'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset('assets/images/logo_light.png'),
              ),
              SizedBox(height: 40),
              CircularProgressIndicator(color: primaryColor),
            ],
          ),
        ],
      ),
    );
  }
}
