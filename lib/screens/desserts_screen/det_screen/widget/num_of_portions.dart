import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/screens/desserts_screen/det_screen/widget/show_result.dart';

import 'custom_button.dart';
import 'head_txt.dart';

class NumOfPortions extends StatelessWidget {
  final int count = 1;

 const NumOfPortions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Expanded(child: HeadTex(str: 'Number of Portions')),
          CustomButton(
            str: '-',
            count: count,
          ),
          ShowResultDet(
            count: count,
          ),
          CustomButton(
            str: '+',
            count: count,
          ),
        ],
      ),
    );
  }
}
