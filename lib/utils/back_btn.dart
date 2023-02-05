import 'package:flutter/material.dart';

import '../constants/screens_dir.dart';

class BackButtonW extends StatelessWidget {
  final Function()? onTap;
  const BackButtonW({
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 16,
      top: 60,
      child: GestureDetector(
        onTap: () => onTap ?? Navigator.pop(context),
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: backButtonBgColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset('assets/images/back_ios.png'),
        ),
      ),
    );
  }
}
