// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ninja/blocs/reslist_cubit.dart';
import 'package:food_ninja/constants/screens_dir.dart';
import 'package:food_ninja/models/res_group.dart';
import 'package:food_ninja/models/restaurant_list.dart';
import 'package:food_ninja/screens/pages/home/components/restaurant_list.dart';
import 'package:food_ninja/screens/pages/home/components/search_filter.dart';

import 'components/restaurant_options.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarScreen(),
      backgroundColor: lightScaffoldBgColor,
      // body: FutureBuilder<List<ResList>>(
      //   future: ResListApi.getResList(context),
      //   builder: (context, snapshot) {
      //     final reslist = snapshot.data;

      //     switch (snapshot.connectionState) {
      //       case ConnectionState.waiting:
      //         return Center(
      //           child: CircularProgressIndicator(),
      //         );
      //       default:
      //         if (snapshot.hasError) {
      //           return Center(
      //             child: Text('Some error occured'),
      //           );
      //         } else {
      //           return SingleChildScrollView(
      body: SingleChildScrollView(
        child: Padding(
          padding: defaultPadding,
          child: Column(
            children: [
              SearchFilter(),
              sizedHeight15,
              Image.asset(
                width: double.infinity,
                'assets/images/promo_advertising.png',
                fit: BoxFit.contain,
              ),
              sizedHeight15,
              RestaurantOptions(
                text: 'Nearest Restaurant',
              ),
              sizedHeight15,
              SizedBox(
                height: 184,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: resListModel.length,
                  itemBuilder: (_, index) =>
                      RestaurantList(resList: resListModel[index]),
                ),
              ),
              sizedHeight15,
              RestaurantOptions(
                text: 'Popular Restaurant',
              ),
              sizedHeight05,
              ListTileW()
            ],
          ),
        ),
      ),
      // ),
    );
  }
}

class ListTileW extends StatelessWidget {
  const ListTileW({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: lightScaffoldBgColor,
      ),
      child: ListTile(
        visualDensity: VisualDensity(
          horizontal: 0,
          vertical: VisualDensity.maximumDensity,
        ),
        leading: Container(
          decoration: BoxDecoration(
            // color: lightSecondaryColor,
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage('assets/images/Photo Menu.png'),
            ),
          ),
          width: 60,
        ),
        title: Text(
          'Green Noodle',
          style: mainTextStyle.copyWith(fontSize: 18),
        ),
        subtitle: Text(
          'Noodle Home',
          style: mainTextStyle.copyWith(fontSize: 12),
        ),
        trailing: Text(
          '\$15.00',
          style: homeSearchStyle.copyWith(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
//         },
//       ),
//     );
//   }
// }
