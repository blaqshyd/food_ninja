// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_ninja/constants/colors.dart';
import 'package:food_ninja/constants/textstyles.dart';

class AppBarScreen extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  AppBarScreen({Key? key})
      : preferredSize = const Size.fromHeight(160.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.only(top: 80, bottom: 20),
      child: AppBar(
        backgroundColor: lightScaffoldBgColor,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Find your',
              style: mainTextStyle,
            ),
            Text(
              'Favorite food',
              style: mainTextStyle.copyWith(fontSize: 28),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              top: 4.0,
              bottom: 8.0,
              right: 16.0,
            ),
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: lightSecondaryColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset('assets/images/icon_notifiaction.png'),
              ),
            ),
          )
        ],
        automaticallyImplyLeading: false,
      ),
    );
  }
}
