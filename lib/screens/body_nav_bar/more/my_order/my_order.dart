import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/more/my_order/widget/first_sections_in_myOrder.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/more/my_order/widget/list_of_order_det.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/more/my_order/widget/two_sections_in_myorder.dart';


import '../../../../shared/cust_appbar_other.dart';
import '../../../../shared/my_button.dart';
import '../../../../util/constant.dart';

class MyOederScreen extends StatelessWidget {
  const MyOederScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarOther(txt: 'My Order'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          children: [
            const FirstSectionsInMyOrder(),
            const SizedBox(height: 22),
            const TwoSectionsInMyOrder(),
            const SizedBox(height: 13),
            InkWell(
              onTap: () {
                print('add');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Delivery Instrusctions',
                    style: TextStyle(
                        fontSize: sizeText, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.add,
                        color: Color(primaryColor),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Add Notes',
                        style: TextStyle(
                            fontSize: sizeText, color: Color(primaryColor)),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 15),
            const Divider(
              height: 1,
              thickness: 1,
            ),
            const SizedBox(height: 15),
            ListOfOrderDet(
                name: 'Sub Total',
                prise: '\$68',
                isBold: true,
                colors: const Color(primaryTextColor),
                size: sizeText),
            const SizedBox(height: 15),
            ListOfOrderDet(
                name: 'Delivery Cost',
                prise: '\$2',
                isBold: true,
                colors: const Color(primaryTextColor),
                size: sizeText),
            const SizedBox(height: 20),
            const Divider(
              height: 1,
              thickness: 1,
            ),
            const SizedBox(height: 20),
            ListOfOrderDet(
                name: 'Total',
                prise: '\$70x',
                isBold: true,
                colors: const Color(primaryColor),
                size: 22),
            const SizedBox(height: 30),
             CustomButton(
              title: 'Checkout',
              color: Color(primaryColor),
              onPressed: ()=>Navigator.pushNamed(context, 'check_out_screen'),
              textSize: sizeText,
            )
          ],
        ),
      ),
    );
  }
}

