// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:food_ninja/constants/colors.dart';
import 'package:food_ninja/constants/routes.dart';
import 'package:food_ninja/constants/sizing.dart';
import 'package:food_ninja/constants/textsTyles.dart';
import '../../utils/btn_widget.dart';
import '../../utils/custom_formfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                  'Sign Up for Free',
                  style: mainTextStyle,
                ),
                sizedHeight40,
                CustomFormField(
                  inputHint: 'John Doe',
                ),
                sizedFormSpacing,
                CustomFormField(
                  inputHint: 'johndoe@gmail.com',
                ),
                sizedFormSpacing,
                CustomFormField(
                  inputHint: 'Password',
                ),
                const SizedBox(height: 15),
                CheckboxListTile(
                  activeColor: primaryColor,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkboxShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  value: true,
                  dense: true,
                  title: Text(
                    'Keep me signed in',
                    style: mainTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onChanged: (value) {},
                ),
                CheckboxListTile(
                  activeColor: primaryColor,
                  controlAffinity: ListTileControlAffinity.leading,
                  checkboxShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  dense: true,
                  title: Text(
                    'Email me about special pricing',
                    style: mainTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  value: true,
                  onChanged: (value) {},
                ),
                sizedHeight15,
                ButtonWidget(
                  backgroundColor: primaryColor,
                  onPressed: () {},
                  buttonText: 'Create Account',
                  icon: Text(""), // I need to fix this
                ),
                sizedHeight20,
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, signInRoute);
                  },
                  child: Text(
                    'Already have an account? Login',
                    style: mainTextStyle.copyWith(
                      fontSize: 14,
                      color: primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
