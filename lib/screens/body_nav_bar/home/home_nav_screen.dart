import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/home/widget/custom_listHoris_two.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/home/widget/custom_listView_verTwo.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/home/widget/custom_list_comp.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/home/widget/custom_list_ver_one.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/home/widget/custom_list_view_hori.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/home/widget/delivering_to_txt.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/home/widget/hedar.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/home/widget/search_appbar.dart';




class HomeNavScreen extends StatelessWidget {
  const HomeNavScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          const DeliveringToTxt(),
          const CustomListComp(),
          const SizedBox(height: 15),
          const SearchBar(),
          const SizedBox(height: 18),
           CustomListHoris(),
          const SizedBox(height: 28),
          HedarName(title: 'Popular Restaurants'),
          const SizedBox(height: 25),
           BodyOffer(),
          const SizedBox(height: 28),
          HedarName(title: 'Most Popular'),
          const SizedBox(height: 20),
          const CustomListHorisTwo(),
          const SizedBox(height: 28),
          HedarName(title: 'Recent Items'),
          const SizedBox(height: 20),
          const CustomListViewVerTwo(),
        ],
    );
  }
}


