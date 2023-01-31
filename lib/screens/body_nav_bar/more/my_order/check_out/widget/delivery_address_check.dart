import 'package:flutter/material.dart';

import '../../../../../../util/constant.dart';

class DeliveryAddressTxt extends StatelessWidget {
  const DeliveryAddressTxt({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Text(
        'Delivery Address',
        style: TextStyle(
          color: Color(secondaryTextColor),
          fontSize: sizeText,
        ),
      ),
    );
  }
}
