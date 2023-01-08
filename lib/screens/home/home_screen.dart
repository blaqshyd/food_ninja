// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/constants/screens_dir.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightScaffoldBgColor,
      body: Padding(
        padding: defaultPadding,
        child: Column(
          children: [
            SearchFilter(),
            sizedHeight15,
            Image.asset('assets/images/promo_advertising.png')
          ],
        ),
      ),
    );
  }
}

class SearchFilter extends StatelessWidget {
  const SearchFilter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomFormField(
            inputHint: 'What do you want to order?',
            inputFillColor: HexColor('F9A84D').withOpacity(.2),
            inputHintStyle: homeSearchStyle,
            prefixIcon: Icon(
              FeatherIcons.search,
              color: HexColor('DA6317'),
            ),
          ),
        ),
        sizedWidth10,
        GestureDetector(
          child: Container(
            width: 58,
            height: 58,
            decoration: BoxDecoration(
              color: HexColor('F9A84D').withOpacity(.2),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset('assets/images/Iconly-Bulk-Filter.png'),
          ),
        ),
      ],
    );
  }
}
