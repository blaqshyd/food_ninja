import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/constants/screens_dir.dart';
import 'package:hexcolor/hexcolor.dart';

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
            prefixIcon: IconButton(
              onPressed: () {},
              icon: Icon(
                FeatherIcons.search,
                color: HexColor('DA6317'),
              ),
            ),
          ),
        ),
        sizedWidth05,
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
