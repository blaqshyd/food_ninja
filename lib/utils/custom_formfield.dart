import 'package:flutter/material.dart';
import 'package:food_ninja/constants/colors.dart';

import 'my_formfield.dart';

class CustomFormField extends StatelessWidget {
  final String? inputHint;
  const CustomFormField({
    Key? key,
    this.inputHint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyFormField(
      inputHint: inputHint,
      // inputHintStyle: mainTextStyle,
      inputFilled: true,
      inputFillColor: secondaryColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
    );
  }
}
