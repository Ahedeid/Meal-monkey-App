import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/more/payment_screen/widget/cust_button_payment.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/more/payment_screen/widget/cust_card_payment.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/more/payment_screen/widget/hedar_txt_payment.dart';
import 'package:meal_monkey_mobile_project/shared/cust_appbar_other.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarOther(
        txt: 'Payment Details',
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderTxtPayment(),
          Divider(
            indent: 22,
            endIndent: 22,
            thickness: 1.5,
          ),
          SizedBox(height: 18),
          CustomCardPayment(),
          CustButtonPayment(
            str: 'Add Another Credit/Debit Card',
            virtial: 60,
          )
        ],
      ),
    );
  }
}
