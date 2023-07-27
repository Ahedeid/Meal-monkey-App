import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/models/bottom_nav_model.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex1;

  final Function(int index) oTab;

  const CustomBottomNavBar({
    super.key,
    required this.oTab,
    required this.currentIndex1,
  });

// void _onItemTapped(int index) {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        elevation: 25,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          elevation: 0,
          iconSize: 28,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          selectedItemColor: const Color(primaryColor),
          currentIndex: currentIndex1,
          onTap: oTab,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          items: [
            ...BottomNavModel.list.map((BottomNavModel data) {
              return BottomNavigationBarItem(
                  icon: Icon(
                    data.icon,
                  ),
                  label: data.label);
            })
          ],
        ));
  }
}
