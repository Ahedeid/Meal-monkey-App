import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/more/payment_screen/widget/Sheet/icon_closebottom_sheet_pay_mayment.dart';
import 'package:meal_monkey_mobile_project/shared/my_button.dart';
import 'package:meal_monkey_mobile_project/util/const_assets.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';



class SendOrderSheet extends StatelessWidget {
  const SendOrderSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 615,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: Column(

          children: [
            const SizedBox(height: 8),
            const IconCloseBottomSeetPayMayment(),
            const SizedBox(height: 15),
            SvgPicture.asset(moneyAndPayment),
            const SizedBox(height: 40),
            const Text(
              'Thank You!',
              style: TextStyle(
                  fontSize: largeTxt,
                  color: Color(primaryTextColor),
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              'for your order',
              style: TextStyle(
                  fontSize: 20,
                  color: Color(primaryTextColor),
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            const Text(
              '  Your Order is now being processed. We will let you know once the order is picked from the outlet. Check            the status of your Order',
              style: TextStyle(
                fontSize: sizeText,
                color: Color(primaryTextColor),
              ),
            ),
            const SizedBox(height: 30),
             CustomButton(
              title: 'Track My Order',
              color: const Color(primaryColor),
              onPressed: (){},
              textSize: mediumTxt,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, 'home_screen');
                },
                child: const Text(
                  'Back To Home',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: mediumTxt,
                      color: Color(primaryTextColor)),
                ))
          ],
        ),
      ),
    );
  }
}
