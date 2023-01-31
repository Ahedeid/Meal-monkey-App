import 'package:flutter/material.dart';

import '../../../../util/constant.dart';


class HeadOfferSc extends StatelessWidget {
  const HeadOfferSc({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Text(
        '''Find discounts, Offers special
meals and more!''',
        style: TextStyle(fontSize: 17, color: Color(secondaryTextColor)),
      ),
    );
  }
}