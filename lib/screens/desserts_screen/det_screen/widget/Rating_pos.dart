import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/screens/desserts_screen/det_screen/widget/shape_rating.dart';

class RatingPos extends StatelessWidget {
  const RatingPos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tandoori Chicken Pizza',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ShapeRating(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Rs. 750',
                    style: TextStyle(
                        fontSize: 31,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff4A4B4D)),
                  ),
                  Text(
                    '/ per Portion',
                    style: TextStyle(color: Color(0xff4A4B4D)),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
