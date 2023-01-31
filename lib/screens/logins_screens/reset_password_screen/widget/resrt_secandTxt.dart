import 'package:flutter/material.dart';

import '../../../../util/constant.dart';

class ResrtSecandTxt extends StatelessWidget {
  const ResrtSecandTxt({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      '   Please enter your email to receive a\nlink to  create a new password via email',
      style: TextStyle(
        color: Color(secondaryTextColor),
        fontSize: sizeText,
      ),
    );
  }
}
