import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';

class SecaondTxtInListHome extends StatelessWidget {
  const SecaondTxtInListHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(width: 22),
        Icon(
          Icons.star_outlined,
          color: Color(primaryColor),
          size: 25,
        ),
        SizedBox(width: 5),
        Text(
          '562',
          style: TextStyle(
            fontSize: sizeText,
            color: Color(secondaryTextColor),
          ),
        ),
        SizedBox(width: 5),
        Text(
          '(124 ratings) Café Western Food',
          style: TextStyle(
            color: Color(secondaryTextColor),
            fontSize: sizeText,
          ),
        ),
      ],
    );
  }
}
