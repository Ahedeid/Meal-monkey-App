import 'package:flutter/material.dart';

import '../../../../../util/constant.dart';


class CustomTitleIndox extends StatelessWidget {
  const CustomTitleIndox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
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