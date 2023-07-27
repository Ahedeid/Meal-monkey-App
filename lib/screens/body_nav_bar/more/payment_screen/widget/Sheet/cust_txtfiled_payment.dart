import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';

class CustomTxtFiledPayment extends StatelessWidget {
  final String hint;
  final double wSizeFiled;

  const CustomTxtFiledPayment(
      {super.key, required this.wSizeFiled, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: SizedBox(
        height: textFieldHeight,
        width: wSizeFiled,
        child: TextField(
          decoration: InputDecoration(
            prefix: const Text("       "),
            hintText: hint,
            hintStyle: const TextStyle(
              color: Color(primaryTextColor),
            ),
            filled: true,
            fillColor: const Color(backGroundColor),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
      ),
    );
  }
}
