// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:food_ninja/constants/screens_dir.dart';

class UploadFile extends StatelessWidget {
  const UploadFile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backgroundColor,
      body: AuthProcessWidget(
        title: 'Upload Photo',
        onPressed: () => Navigator.pushNamed(context, uploadReviewRoute),
        authWidget: [
          ButtonWidget(
            backgroundColor: lightScaffoldBgColor,
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset('assets/images/gallery_Icon.png'),
            ),
          ),
          sizedFormSpacing,
          ButtonWidget(
            onPressed: () {},
            backgroundColor: lightScaffoldBgColor,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset('assets/images/camera_icon.png'),
            ),
          ),
        ],
      ),
    );
  }
}
