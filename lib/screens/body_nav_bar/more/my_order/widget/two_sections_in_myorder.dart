import 'package:flutter/material.dart';

import '../../../../../util/constant.dart';
import 'list_of_order_det.dart';


class TwoSectionsInMyOrder extends StatelessWidget {
  const TwoSectionsInMyOrder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      color: const Color(0xffF6F6F6),
      child: Column(
        children: [
          ListOfOrderDet(
              name: 'Beef Burger x1',
              prise: '\$16',
              isBold: false,
              colors: const Color(primaryTextColor),
              size: sizeText),
          const SizedBox(height: 15),
          const Divider(
            height: 1,
            thickness: 1,
          ),
          const SizedBox(height: 13),
          ListOfOrderDet(
              name: 'Classic Burger x1',
              prise: '\$14',
              isBold: false,
              colors: const Color(primaryTextColor),
              size: sizeText),
          const SizedBox(height: 15),
          const Divider(
            height: 1,
            thickness: 1,
          ),
          const SizedBox(height: 13),
          ListOfOrderDet(
              name: 'Cheese Chicken Burger x1',
              prise: '\$17',
              isBold: false,
              colors: const Color(primaryTextColor),
              size: sizeText),
          const SizedBox(height: 15),
          const Divider(
            height: 1,
            thickness: 1.5,
          ),
          const SizedBox(height: 13),
          ListOfOrderDet(
              name: 'Chicken Legs Basket x1',
              prise: '\$15',
              isBold: false,
              colors: const Color(primaryTextColor),
              size: sizeText),
          const SizedBox(height: 15),
          const Divider(
            height: 1,
            thickness: 1,
          ),
          const SizedBox(height: 13),
          ListOfOrderDet(
              name: 'French Fries Large x1',
              prise: '\$6',
              isBold: false,
              colors: const Color(primaryTextColor),
              size: sizeText),
        ],
      ),
    );
  }
}
