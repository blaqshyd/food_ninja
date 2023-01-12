import 'package:flutter/material.dart';

import '../../../../constants/screens_dir.dart';

class RestaurantOptions extends StatelessWidget {
  final String text;
  const RestaurantOptions({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: mainTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              'View more',
              style: homeSearchStyle.copyWith(
                fontSize: 12,
              ),
            ))
      ],
    );
  }
}
