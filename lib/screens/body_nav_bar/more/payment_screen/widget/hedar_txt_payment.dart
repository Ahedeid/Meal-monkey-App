import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';

class HeaderTxtPayment extends StatelessWidget {
  const HeaderTxtPayment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 22),
      child: Text(
        'Customize your payment method',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: mediumTxt),
      ),
    );
  }
}
