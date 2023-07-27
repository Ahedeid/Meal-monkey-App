import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';

class CustomTitleIndox extends StatelessWidget {
  const CustomTitleIndox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'MealMonkey Promotions',
            style: TextStyle(
              fontSize: mediumTxt,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Lorem ipsum dolor sit amet, consectetur consectetur adipiscing elit, adipiscing',
            style: TextStyle(color: Color(secondaryTextColor)),
          ),
        ]);
  }
}
