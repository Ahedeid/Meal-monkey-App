import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({super.key, required this.index});

  final int index;

  final tex = [
    'Menu',
    'Latest Offers',
    'Good morning Akila!',
    'Profile',
    'More',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          tex[index],
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(primaryTextColor),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ))
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  @override
  Size get preferredSize => const Size.fromHeight(60);
}
