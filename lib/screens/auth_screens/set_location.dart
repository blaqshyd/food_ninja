// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_ninja/constants/screens_dir.dart';

class SetLocation extends StatelessWidget {
  const SetLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backgroundColor,
      body: AuthProcessWidget(
        onPressed: () => Navigator.pushNamed(context, authCompleteRoute),
        title: 'Set Your Location',
        authWidget: [
          Center(
            child: Stack(
              children: [
                Container(
                  height: 160,
                  decoration: BoxDecoration(
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
                    borderRadius: BorderRadius.circular(12),
                    color: lightScaffoldBgColor,
                  ),
                ),
                Positioned(
                    left: 10,
                    top: 20,
                    child: Row(
                      children: [
                        Image.asset('assets/images/location.png'),
                        sizedWidth10,
                        Text(
                          '53 Chambers St, NY, 10007',
                          style: mainTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 10,
                  child: Padding(
                    padding: defaultPadding,
                    child: ButtonWidget(
                      backgroundColor: lightSecondaryColor,
                      // buttonText: '',
                      child: Text(
                        'Set Location',
                        style: mainTextStyle.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
