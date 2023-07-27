import 'package:flutter/material.dart';

import 'cus_container_more.dart';
import 'custom_button_more.dart';

class BodyMore extends StatelessWidget {
  String str;
  String nav;

  String image;

  BodyMore(
      {super.key, required this.nav, required this.str, required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, nav);
      },
      child: Stack(
        children: [
          CusContainerMore(image: image, str: str),
          CustomButtonMore(
            nav: nav,
          ),
        ],
      ),
    );
  }
}
