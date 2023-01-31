import 'package:flutter/material.dart';

import '../../../../../util/constant.dart';

class MianTxtInListHome extends StatelessWidget {
  const MianTxtInListHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 22,top: 15),
      child: Text(
        'Minute by tuk tuk',
        style: TextStyle(
            fontSize: 20,
            color: Color(primaryTextColor),
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
