// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/constants/colors.dart';
import 'package:food_ninja/constants/textstyles.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int)? onTap;
  const NavBar({
    required this.onTap,
    required this.selectedIndex,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
        height: 80,
        decoration: BoxDecoration(
          color: lightScaffoldBgColor.withOpacity(.88),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: lightSecondaryColor,
              blurRadius: 10.0,
              offset: Offset(0, 5),
            ),
            BoxShadow(
              color: lightSecondaryColor,
              blurRadius: 10.0,
              offset: Offset(-5, 0),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: GNav(
              color: primaryColor,
              activeColor: lightScaffoldBgColor,
              tabBackgroundColor: primaryColor.withOpacity(0.4),
              textStyle: mainTextStyle.copyWith(
                fontSize: 12,
              ),
              tabBorderRadius: 12,
              iconSize: 20,
              gap: 10,
              selectedIndex: selectedIndex,
              onTabChange: onTap,
              duration: Duration(milliseconds: 900),
              padding: EdgeInsets.symmetric(
                horizontal: 23,
                vertical: 15,
              ),
              tabs: [
                GButton(
                  active: true,
                  icon: FeatherIcons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: FeatherIcons.user,
                  text: 'Profile',
                ),
                GButton(
                  icon: FeatherIcons.shoppingCart,
                  text: 'Cart',
                ),
                GButton(
                  icon: FeatherIcons.messageCircle,
                  text: 'Chat',
                ),
              ]),
        ),
      ),
    );
  }
}
