// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_ninja/constants/colors.dart';
import 'package:food_ninja/constants/routes.dart';

import 'package:food_ninja/screens/onboarding/screens/onboarding1.dart';
import 'package:food_ninja/screens/onboarding/screens/onboarding2.dart';
import '../../utils/btn_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController pageViewController = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 1);
              });
            },
            controller: pageViewController,
            allowImplicitScrolling: true,
            children: const [
              OnboardingOne(),
              OnboardingTwo(),
            ],
          ),
          Positioned(
            bottom: 80,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ButtonWidget(
                onLastPage: onLastPage,
                pageViewController: pageViewController,
                backgroundColor: primaryColor,
                buttonText: 'Next',
                icon: Text(''),
                onPressed: () {
                  onLastPage
                      ? Navigator.pushNamedAndRemoveUntil(
                          context, signInRoute, (route) => false)
                      : pageViewController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
