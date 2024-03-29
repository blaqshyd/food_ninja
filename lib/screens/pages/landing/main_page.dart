import 'package:flutter/material.dart';
import 'package:food_ninja/constants/colors.dart';
import 'package:food_ninja/constants/screens_dir.dart';
import 'package:food_ninja/constants/themes.dart';
import 'package:food_ninja/screens/pages/cart/cart.dart';
import 'package:food_ninja/screens/pages/chat/chat.dart';
import 'package:food_ninja/screens/pages/home/home_screen.dart';
import 'package:food_ninja/screens/pages/profile/profile.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../utils/nav_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  List<Widget> pages = [
    const HomeScreen(),
    const ProfileScreen(),
    const CartScreen(),
    const ChatScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBarScreen(),
        bottomNavigationBar: NavBar(
          selectedIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
        // bottomNavigationBar: PersistentBottomNavBar(
        //   // confineToSafeArea: true,
        //   navBarStyle: NavBarStyle.neumorphic,
        //   navBarDecoration: NavBarDecoration(
        //     borderRadius: BorderRadius.circular(12),
        //   ),
        //   customNavBarWidget: PersistentBottomNavBar(),
        // ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: pages[_selectedIndex],
      ),
    );
  }
}
