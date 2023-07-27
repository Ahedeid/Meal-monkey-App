import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';

class ListOfOrderDet extends StatelessWidget {
  final String name;
  final String prise;

  final bool isBold;
  final Color colors;
  final double size;

  const ListOfOrderDet({
    super.key,
    required this.name,
    required this.prise,
    required this.isBold,
    required this.colors,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: TextStyle(
            fontSize: sizeText,
            fontWeight: isBold == true ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Text(
          prise,
          style: TextStyle(fontSize: size, color: colors),
        ),
      ],
    );
  }
}
