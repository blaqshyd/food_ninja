// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import '../../constants/screens_dir.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              child: Image.asset('assets/images/pattern.png'),
            ),
            Padding(
              padding: defaultPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
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
                    inputHint: 'johndoe@gmail.com',
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
                    inputHint: 'Password',
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
                    onPressed: () {
                      Navigator.pushNamed(context, singUpProcessRoute);
                    },
                    child: Text('Create Account'),
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
      ),
    );
  }
}
