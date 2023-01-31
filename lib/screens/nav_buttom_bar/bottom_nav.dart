import 'package:flutter/material.dart';

import '../../models/bottom_nav_model.dart';
import '../../util/constant.dart';

class CustomBottomNavBar extends StatelessWidget {
  int currentIndex1 ;
  Function(int index) oTab ;
   CustomBottomNavBar({super.key, required this.oTab ,required this.currentIndex1});

// void _onItemTapped(int index) {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 15,
        elevation: 25,
       clipBehavior: Clip.antiAlias,
       child: BottomNavigationBar(
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: const Color(primaryColor),
        currentIndex: currentIndex1 ,
        onTap:oTab ,
        selectedFontSize: 16,
        unselectedFontSize: 16,
        items: [...BottomNavModel.list.map((BottomNavModel data) {
          return BottomNavigationBarItem(icon: Icon(data.icon,), label:data.label);
        })],
      )),
    );
  }
}



