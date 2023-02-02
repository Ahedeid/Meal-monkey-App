
import 'package:flutter/material.dart';

import '../../../../util/constant.dart';






class CustomListComp extends StatelessWidget {
  const CustomListComp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      // controlAffinity: ListTileControlAffinity.trailing,
      // childrenPadding: EdgeInsets.all(50),
        tilePadding: EdgeInsets.only(left: 21, right: 120),
        title: Text(
          'Current Location',
          style: TextStyle(
            fontSize: largeTxt,
            color: Color(primaryTextColor),
            fontWeight: FontWeight.bold
          ),
        ));
  }
}