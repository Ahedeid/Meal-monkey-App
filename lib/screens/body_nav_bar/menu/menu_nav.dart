import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/menu/widget/body_menu.dart';

import '../home/widget/search_appbar.dart';

class MenuNav extends StatefulWidget {
  const MenuNav({Key? key}) : super(key: key);

  @override
  State<MenuNav> createState() => _MenuNavState();
}

class _MenuNavState extends State<MenuNav> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        //SizedBox(height: 5),
        SearchBar(),
        SizedBox(height: 35),
        BodyMenu(),
      ],
    );
  }
}




