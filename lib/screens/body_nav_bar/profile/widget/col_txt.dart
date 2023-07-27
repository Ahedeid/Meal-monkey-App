import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';

class ColTxt extends StatelessWidget {
  const ColTxt({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.edit,
          color: Color(primaryColor),
          size: 12,
        ),
        SizedBox(width: 7),
        Text(
          'Edit Profile',
          style: TextStyle(color: Color(primaryColor), fontSize: 13),
        ),
      ],
    );
  }
}
