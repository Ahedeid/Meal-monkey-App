import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';

class DescriptionDet extends StatelessWidget {
  const DescriptionDet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada',
        style: TextStyle(
          fontSize: 16,
          color: Color(secondaryTextColor),
        ),
      ),
    );
  }
}
