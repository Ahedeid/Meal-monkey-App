import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';

class HeaderTxtSheetPayment extends StatelessWidget {
  const HeaderTxtSheetPayment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Add Credit/Debit Card',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: mediumTxt,
      ),
    );
  }
}
