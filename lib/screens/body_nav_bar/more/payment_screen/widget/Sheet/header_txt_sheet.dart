import 'package:flutter/material.dart';

import '../../../../../../util/constant.dart';





class HeaderTxtSheetPayMent extends StatelessWidget {
  const HeaderTxtSheetPayMent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Add Credit/Debit Card',
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: midemTesx),
    );
  }
}