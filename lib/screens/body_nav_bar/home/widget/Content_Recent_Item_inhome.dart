import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';

class ContentRecentItemInHome extends StatelessWidget {
  const ContentRecentItemInHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8),
        Text(
          'Mulberry Pizza by Josh',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          'Café Western Food',
          style: TextStyle(color: Color(secondaryTextColor)),
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Icon(
              Icons.location_on,
              color: Color(primaryColor),
              size: 18,
            ),
            SizedBox(width: 4),
            Text(
              '4.9',
              style: TextStyle(
                color: Color(primaryColor),
              ),
            ),
            SizedBox(width: 5),
            Text(
              '(124 Ratings)',
              style: TextStyle(
                color: Color(secondaryTextColor),
              ),
            ),
          ],
        )
      ],
    );
  }
}
