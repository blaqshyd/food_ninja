// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_ninja/constants/colors.dart';
import 'package:food_ninja/constants/routes.dart';
import 'package:food_ninja/constants/sizing.dart';
import 'package:food_ninja/constants/textsTyles.dart';
import '../../utils/btn_widget.dart';
import '../../utils/custom_formfield.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
            child: Image.asset('assets/images/pattern.png'),
          ),
          Padding(
            padding: primaryPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // const SizedBox(height: 50),
                sizedHeight50,
                Center(
                  child: Image.asset('assets/images/logo_light.png'),
                ),
                // const SizedBox(height: 50),
                sizedHeight35,
                Text(
                  'Login To Your Account',
                  style: mainTextStyle,
                ),
                sizedHeight40,
                CustomFormField(
                  inputHint: 'Email',
                ),
                sizedFormSpacing,
                CustomFormField(
                  inputHint: 'Password',
                ),
                const SizedBox(height: 20),
                Text(
                  'Or continue with',
                  style: mainTextStyle.copyWith(fontSize: 16),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                        child: ButtonWidget(
                      icon: Image.asset('assets/images/facebook.png'),
                      onPressed: () {},
                      buttonText: 'Facebook',
                      backgroundColor: secondaryColor,
                      style: mainTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    )),
                    SizedBox(width: 15),
                    Expanded(
                        child: ButtonWidget(
                      icon: Image.asset('assets/images/google-icon.png'),
                      onPressed: () {},
                      buttonText: 'Google',
                      backgroundColor: secondaryColor,
                      style: mainTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    )),
                  ],
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, signUpRoute);
                  },
                  child: Text(
                    'Forgot your Password?',
                    style: mainTextStyle.copyWith(
                      fontSize: 14,
                      color: primaryColor,
                    ),
                  ),
                ),
                sizedHeight35,
                ButtonWidget(
                  backgroundColor: primaryColor,
                  onPressed: () {
                    Navigator.pushNamed(context, homeRoute);
                  },
                  buttonText: 'Login',
                  icon: Text(""), // I need to fix this
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
