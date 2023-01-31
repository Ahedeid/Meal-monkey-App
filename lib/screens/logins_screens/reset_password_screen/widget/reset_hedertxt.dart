import 'package:flutter/material.dart';

import '../../../../util/constant.dart';

class ResetHedertxt extends StatelessWidget {
  const ResetHedertxt({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Reset Password',
      style: TextStyle(
        fontSize: psizeText,
        fontWeight: FontWeight.bold,
        color: Color(primaryTextColor),
      ),
    );
  }
}