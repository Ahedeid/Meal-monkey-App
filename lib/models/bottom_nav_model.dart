import 'package:flutter/material.dart';

class BottomNavModel {
  final IconData? icon;

  final String? label;

  BottomNavModel({
    this.icon,
    this.label,
  });

  static List<BottomNavModel> list = [
    BottomNavModel(
      icon: Icons.menu,
      label: 'Menu',
    ),
    BottomNavModel(
      icon: Icons.shopping_bag_outlined,
      label: 'Offers',
    ),
    BottomNavModel(
      label: '',
    ),
    BottomNavModel(
      icon: Icons.person,
      label: 'Profile',
    ),
    BottomNavModel(
      icon: Icons.more,
      label: 'More',
    ),
  ];
}
