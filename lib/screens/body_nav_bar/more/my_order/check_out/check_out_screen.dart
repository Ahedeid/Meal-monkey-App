import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/more/my_order/check_out/widget/change_address_check.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/more/my_order/check_out/widget/delivery_address_check.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/more/my_order/check_out/widget/list_radio_check_out.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/more/my_order/check_out/widget/payment_method_check.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/more/my_order/widget/list_of_order_det.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/more/payment_screen/widget/cust_button_payment.dart';
import 'package:meal_monkey_mobile_project/shared/cust_appbar_other.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarOther(txt: 'Checkout'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          const DeliveryAddressTxt(),
          const SizedBox(height: 10),
          const ChangeAddress(),
          const SizedBox(height: 15),
          const Divider(thickness: 13, color: Color(0xffF6F6F6)),
          const SizedBox(height: 15),
          const PaymentMethod(),
          const SizedBox(height: 10),
          const ListRadioCheckOut(val: 0, txt: 'Cash on delivery', image: ''),
          const ListRadioCheckOut(
              val: 1,
              txt: '**** **** **** 2187',
              image: 'assets/images/vizacheck.svg'),
          const ListRadioCheckOut(
              val: 2,
              txt: 'johndoe@email.com',
              image: 'assets/images/paypal.svg'),
          const SizedBox(height: 15),
          const Divider(thickness: 13, color: Color(0xffF6F6F6)),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: ListOfOrderDet(
                name: 'Sub Total',
                prise: '\$68',
                isBold: false,
                colors: const Color(primaryTextColor),
                size: sizeText),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: ListOfOrderDet(
                name: 'Delivery Cost',
                prise: '\$2',
                isBold: false,
                colors: const Color(primaryTextColor),
                size: sizeText),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: ListOfOrderDet(
                name: 'Discount',
                prise: '-\$4',
                isBold: false,
                colors: const Color(primaryTextColor),
                size: sizeText),
          ),
          const SizedBox(height: 20),
          Divider(
            indent: 22,
            endIndent: 22,
            thickness: 1,
            height: 1,
            color: Colors.grey.shade200,
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: ListOfOrderDet(
                name: 'Total',
                prise: '-\$66',
                isBold: false,
                colors: const Color(primaryTextColor),
                size: sizeText),
          ),
          const SizedBox(height: 20),
          const Divider(thickness: 13, color: Color(0xffF6F6F6)),
          const SizedBox(height: 25),
          CustButtonPayment(
            str: 'Send Order',
            virtial: 20,
          ),
        ],
      ),
    );
  }
}
