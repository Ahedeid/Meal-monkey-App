import 'package:flutter/material.dart';

import '../../../../../util/constant.dart';


class SecaondTxtInListHome extends StatelessWidget {
  const SecaondTxtInListHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SizedBox(width: 22),
        Icon(
          Icons.star_outlined,
          color: Color(primaryColor),
          size: 25,
        ),
        SizedBox(width: 5),
        Text('562',style: TextStyle(fontSize: sizeText,color: Color(secondaryTextColor)),),
        SizedBox(width: 5),
        Text(
          '(124 ratings) Café Western Food',
          style: TextStyle(
            color: Color(secondaryTextColor),
            fontSize: sizeText,
          ),
        ),

      ],
    );
  }
}
