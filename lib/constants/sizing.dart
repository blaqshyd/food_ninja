import 'package:flutter/material.dart';
import 'package:food_ninja/constants/screens_dir.dart';

final sizedHeight50 = SizedBox(height: 50.h);
final sizedHeight40 = SizedBox(height: 40.h);
final sizedHeight35 = SizedBox(height: 35.h);
final sizedHeight30 = SizedBox(height: 30.h);
final sizedHeight20 = SizedBox(height: 20.h);
final sizedHeight15 = SizedBox(height: 15.h);
final sizedHeight10 = SizedBox(height: 10.h);
final sizedHeight05 = SizedBox(height: 5.h);
final sizedHeight02 = SizedBox(height: 2.h);

final sizedWidth40 = SizedBox(width: 40.w);
final sizedWidth35 = SizedBox(width: 35.w);
final sizedWidth30 = SizedBox(width: 30.w);
final sizedWidth20 = SizedBox(width: 20.w);
final sizedWidth15 = SizedBox(width: 15.w);
final sizedWidth10 = SizedBox(width: 10.w);
final sizedWidth05 = SizedBox(width: 5.w);

final sizedFormSpacing = SizedBox(height: 12.h);

const defaultPadding = EdgeInsets.symmetric(horizontal: 16.0);
final borderRadius = BorderRadius.circular(15);

const primarySize = 16.0;
const secondarySize = 14.0;
const miniSize = 12.0;

final boxShadow = [
  BoxShadow(
    color: lightSecondaryColor,
    blurRadius: 10.0,
    spreadRadius: 5,
    offset: const Offset(0, 5),
  ),
  BoxShadow(
    color: lightSecondaryColor,
    blurRadius: 10.0,
    spreadRadius: 5,
    offset: const Offset(-5, 0),
  ),
];
