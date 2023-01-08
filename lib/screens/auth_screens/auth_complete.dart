import 'package:flutter/material.dart'; // ignore_for_file: prefer_const_constructors
import 'package:food_ninja/constants/screens_dir.dart';

class AuthComplete extends StatelessWidget {
  const AuthComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Positioned(
            child: Image.asset('assets/images/pattern.png'),
          ),
          Column(
            children: [
              Spacer(),
              Center(
                child: Image.asset('assets/images/success.png'),
              ),
              sizedHeight30,
              Text(
                'Congrats!',
                style: mainTextStyle.copyWith(
                  color: primaryColor,
                  fontSize: 28,
                ),
              ),
              sizedHeight20,
              Text(
                'Your profile is ready to use.',
                style: mainTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              Spacer()
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 80,
            child: Padding(
              padding: defaultPadding,
              child: ButtonWidget(
                backgroundColor: primaryColor,
                onPressed: () => Navigator.pushNamed(context, mainRoute),
                // buttonText: '',
                child: Text('Try Order'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
