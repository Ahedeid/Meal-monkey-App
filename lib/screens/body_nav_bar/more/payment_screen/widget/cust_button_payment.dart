import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/more/my_order/check_out/widget/send_order_sheet.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';
import 'Sheet/contentInPayment.dart';
import 'Sheet/csut_bottomsheet_payment.dart';

class CustButtonPayment extends StatelessWidget {
  final String str;

  final double virtial;

  const CustButtonPayment(
      {super.key, required this.str, required this.virtial});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35, vertical: virtial),
      child: SizedBox(
        height: 65,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                const MaterialStatePropertyAll(Color(primaryColor)),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35),
              ),
            ),
          ),
          onPressed: () {
            str == 'Send Order'
                ? showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(18),
                          topRight: Radius.circular(18)),
                    ),
                    builder: ((context) {
                      return const SendOrderSheet();
                    }))
                : showModalBottomSheet(
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
          child: ContentInButtonPayment(str: str),
        ),
      ),
    );
  }
}
