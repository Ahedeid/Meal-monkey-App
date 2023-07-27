import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';

class SumTxtOfFirsSectionMyOrder extends StatelessWidget {
  const SumTxtOfFirsSectionMyOrder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 5),
        Text(
          'King Burgers',
          style: TextStyle(fontSize: mediumTxt, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Color(primaryColor),
              size: 18,
            ),
            SizedBox(width: 5),
            Text(
              '4.9',
              style: TextStyle(color: Color(primaryColor)),
            ),
            SizedBox(width: 5),
            Text(
              '(124 ratings)',
              style: TextStyle(
                color: Color(secondaryTextColor),
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Text(
          'Burger  Western Food',
          style: TextStyle(color: Color(secondaryTextColor)),
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Icon(
              Icons.location_on,
              color: Color(primaryColor),
              size: 18,
            ),
            SizedBox(width: 5),
            Text(
              'No 03, 4th Lane, Newyork',
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
