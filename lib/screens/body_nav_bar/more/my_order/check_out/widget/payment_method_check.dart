import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/more/payment_screen/widget/Sheet/csut_bottomsheet_payment.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18)),
              ),
              builder: (context) {
                return const CusBottomSheetPayMent();
              });
        },
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Payment method',
              style: TextStyle(
                  fontSize: sizeText, color: Color(secondaryTextColor)),
            ),
            Row(
              children: [
                Icon(
                  Icons.add,
                  color: Color(primaryColor),
                ),
                SizedBox(width: 10),
                Text(
                  'Add Card',
                  style:
                      TextStyle(fontSize: sizeText, color: Color(primaryColor)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
