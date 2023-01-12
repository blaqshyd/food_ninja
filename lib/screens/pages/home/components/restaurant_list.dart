import 'package:flutter/material.dart';
import 'package:food_ninja/main.dart';
import 'package:food_ninja/models/restaurant_list.dart';

import '../../../../constants/screens_dir.dart';

class RestaurantList extends StatelessWidget {
  final ResList resList;
  const RestaurantList({
    required this.resList,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: const EdgeInsets.only(right: 12.0),
      padding: const EdgeInsets.all(6.0),

      child: Container(
        decoration: BoxDecoration(
            color: lightScaffoldBgColor,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: lightSecondaryColor,
                offset: const Offset(0, 5),
              ),
              BoxShadow(
                color: lightSecondaryColor,
                offset: const Offset(5, 5),
              ),
              BoxShadow(
                color: lightSecondaryColor,
                offset: const Offset(5, 10),
                spreadRadius: 5,
              ),
              BoxShadow(
                color: lightSecondaryColor,
                offset: const Offset(5, 0),
                spreadRadius: 5,
              ),
            ]),
        width: 145,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(resList.resImage),
            sizedHeight10,
            Text(
              resList.resName,
              style: mainTextStyle.copyWith(fontSize: 14),
            ),
            sizedHeight05,
            Text(
              resList.resDistance,
              style: mainTextStyle.copyWith(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
