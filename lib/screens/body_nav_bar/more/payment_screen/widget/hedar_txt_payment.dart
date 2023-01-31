

import 'package:flutter/material.dart';

import '../../../../../util/constant.dart';

class HedarTxtPayment extends StatelessWidget {
  const HedarTxtPayment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 22),
      child: Text(
        'Customize your payment method',
        style:
        TextStyle(fontWeight: FontWeight.bold, fontSize: midemTesx),
      ),
    );
  }
}