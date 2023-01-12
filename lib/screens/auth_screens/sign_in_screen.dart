// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../constants/screens_dir.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Image.asset('assets/images/pattern.png'),
            ),
            Padding(
              padding: defaultPadding,
              child: Column(
                children: [
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
                    inputFillColor: lightScaffoldBgColor,
                    inputHint: 'Email',
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
                    inputFillColor: lightScaffoldBgColor,
                    inputHint: 'Password',
                    obscureText: true,
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
                        onPressed: () {},
                        // buttonText: 'Facebook',
                        backgroundColor: lightScaffoldBgColor,
                        style: mainTextStyle.copyWith(
                          fontSize: 16,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/facebook.png'),
                            sizedWidth10,
                            Text(
                              'Facebook',
                              style: mainTextStyle.copyWith(fontSize: 14),
                            )
                          ],
                        ),
                      )),
                      SizedBox(width: 15),
                      Expanded(
                          child: ButtonWidget(
                        onPressed: () {},
                        // buttonText: 'Google',
                        backgroundColor: lightScaffoldBgColor,
                        style: mainTextStyle.copyWith(
                          fontSize: 16,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/google-icon.png'),
                            sizedWidth10,
                            Text(
                              'Google',
                              style: mainTextStyle.copyWith(fontSize: 14),
                            )
                          ],
                        ),
                      )),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, forgotPwdRoute);
                      },
                      child: Text(
                        'Forgot your Password?',
                        style: mainTextStyle.copyWith(
                          fontSize: 14,
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ),
                  sizedHeight15,
                  ButtonWidget(
                    backgroundColor: primaryColor,
                    onPressed: () {
                      Navigator.pushNamed(context, mainRoute);
                    },

                    child: Text("Login"), // I need to fix this
                  ),
                  sizedHeight20,
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, signUpRoute);
                    },
                    child: Text(
                      'New user? Create account',
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
