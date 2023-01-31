import 'package:flutter/material.dart';

import 'package:meal_monkey_mobile_project/screens/desserts_screen/widget/app_bar_dessets.dart';
import 'package:meal_monkey_mobile_project/screens/desserts_screen/widget/body_builder.dart';


class DessertsScreen extends StatefulWidget {
  const DessertsScreen({Key? key}) : super(key: key);

  @override
  State<DessertsScreen> createState() => _DessertsScreenState();
}

class _DessertsScreenState extends State<DessertsScreen> {
int currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //extendBodyBehindAppBar: true,
      appBar: CustomAppBarDesserts(),
       body: BodyDessertsScreen(),
    );
  }
}





//  body: ListView(
//    physics: const NeverScrollableScrollPhysics(),
//    children: [
//      SearchBar(),
//      SizedBox(height: 20),
//      Expanded(
//        child: ListView.builder(
//           // physics: const NeverScrollableScrollPhysics(),
//          itemCount: 8,
//          itemBuilder: (context, index) {
//            return body_desserts();
//          },
//        ),
//      ),
//    ],
//
//  ),

// floatingActionButton: CustomFloating(
//     onTab: () {
//       setState(() {
//         currentIndex = 2;
//       });
//     },
//     currentIndex: currentIndex),
// floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
// bottomNavigationBar: CustomBottomNavBar(
//     oTab: (index) {
//       setState(() {
//         currentIndex = index ;
//       });
//     },
//     currentIndex1: currentIndex),