import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';


class DeliveringToTxt extends StatelessWidget {
  const DeliveringToTxt({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: 22,
        top: 10,
      ),
      child: Text(
        'Delivering to',
        style: TextStyle(
          fontSize: sizeText,
          color: Color(secondaryTextColor),
        ),
      ),
    );
  }
}
