import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';

class ShowResultDet extends StatelessWidget {
  const ShowResultDet({super.key, required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 35,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: const Color(primaryColor),
            width: 2,
          )),
      child: Center(
        child: Text(
          '$count',
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
