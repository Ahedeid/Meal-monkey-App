import 'package:flutter/material.dart';

import '../../../../util/constant.dart';

class ColTxt extends StatelessWidget {
  const ColTxt({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.edit,color: Color(primaryColor),size: 12,),
        SizedBox(width: 7),
        Text('Edit Profile',style: TextStyle(color: Color(primaryColor),fontSize: 13),),
      ],
    );
  }
}