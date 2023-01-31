import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/screens/home_screen/widget/app_bar.dart';
import '../body_nav_bar/home/home_nav_screen.dart';
import '../body_nav_bar/menu/menu_nav.dart';
import '../body_nav_bar/more/more_nav.dart';
import '../body_nav_bar/offers/offers_nav.dart';
import '../body_nav_bar/profile/profile_anv.dart';
import '../nav_buttom_bar/bottom_nav.dart';
import '../nav_buttom_bar/custom_floating.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 2;

  final pages = <Widget>[
    const MenuNav(),
    const OffersNav(),
    const HomeNavScreen(),
    const ProfileNav(),
    const MoreNav(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
     resizeToAvoidBottomInset: false,
     // backgroundColor: Colors.white,
      appBar:  CustomAppBar(index: currentIndex),
      body: pages[currentIndex],
      floatingActionButton: CustomFloating(
          onTab: () {
            setState(() {
              currentIndex = 2;
            });
          },
          currentIndex: currentIndex),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNavBar(
          oTab: (index) {
            setState(() {
              currentIndex = index ;
            });
          },
          currentIndex1: currentIndex),
    );
  }

}
