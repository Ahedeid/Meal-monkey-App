import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/more/my_order/widget/sum_txt_ofFirs_sectionMyOrder.dart';

import '../../../../../util/const_assets.dart';



class FirstSectionsInMyOrder extends StatelessWidget {
  const FirstSectionsInMyOrder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: SizedBox(
        width: double.infinity,
        height: 100,
        child: Row(
          children: [
            Image.asset(porgar),
            const SizedBox(width: 17),
            const SumTxtOfFirsSectionMyOrder()

          ],
        ),
      ),
    );
  }
}

