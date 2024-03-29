import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';

import 'cust_button_sheet_payment.dart';
import 'cust_txtfiled_payment.dart';
import 'header_txt_sheet.dart';
import 'icon_closebottom_sheet_pay_mayment.dart';

class CusBottomSheetPayMent extends StatefulWidget {
  const CusBottomSheetPayMent({Key? key}) : super(key: key);

  @override
  State<CusBottomSheetPayMent> createState() => _CusBottomSheetPayMentState();
}

class _CusBottomSheetPayMentState extends State<CusBottomSheetPayMent> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 673,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            const IconCloseBottomSheetPayment(),
            const HeaderTxtSheetPayment(),
            const SizedBox(height: 18),
            const Divider(endIndent: 22, height: 1, thickness: 1),
            const SizedBox(height: 18),
            const CustomTxtFiledPayment(
              hint: 'Card Number',
              wSizeFiled: 420,
            ),
            const SizedBox(height: 18),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Expiry',
                  style: TextStyle(fontSize: mediumTxt),
                ),
                CustomTxtFiledPayment(hint: 'MM', wSizeFiled: 100),
                CustomTxtFiledPayment(hint: 'YY', wSizeFiled: 100),
              ],
            ),
            const SizedBox(height: 18),
            const CustomTxtFiledPayment(hint: 'Security Code', wSizeFiled: 420),
            const SizedBox(height: 18),
            const CustomTxtFiledPayment(hint: 'First Name', wSizeFiled: 420),
            const SizedBox(height: 18),
            const CustomTxtFiledPayment(hint: 'Last Name', wSizeFiled: 420),
            const SizedBox(height: 40),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              const Text(
                '''You can remove this card 
  at anytime''',
                style: TextStyle(fontSize: sizeText),
              ),
              Switch(
                activeColor: const Color(primaryColor),
                inactiveTrackColor: Colors.grey,
                value: _isSwitched,
                onChanged: (val) {
                  setState(() {
                    _isSwitched = val;
                  });
                },
              ),
            ]),
            const CustomButtonSheetPayment()
          ],
        ),
      ),
    );
  }
}
