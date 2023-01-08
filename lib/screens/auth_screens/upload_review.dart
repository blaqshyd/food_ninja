// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_ninja/constants/screens_dir.dart';
import 'package:hexcolor/hexcolor.dart';

class UploadReview extends StatelessWidget {
  const UploadReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backgroundColor,
      body: AuthProcessWidget(
        authWidget: [
          Center(
            child: Stack(
              children: [
                Container(
                  width: 245,
                  height: 238,
                  decoration: BoxDecoration(
                    color: lightSecondaryColor,
                    borderRadius: BorderRadius.circular(35),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/placeholder.png', // Replace with the placeholder at first
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    left: 180,
                    right: 0,
                    top: 10,
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/close_icon.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          )
        ],
        title: 'Upload Photo',
        onPressed: () => Navigator.pushNamed(context, setLocationRoute),
      ),
    );
  }
}
