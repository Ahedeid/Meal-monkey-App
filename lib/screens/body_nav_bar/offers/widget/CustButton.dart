import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';


class CustomButtonOffer extends StatelessWidget {
  const CustomButtonOffer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(Color(primaryColor)),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28),
            ),
          ),
        ),
        onPressed: () {},
        child: const Text('Check Offers'),
      ),
    );
  }
}
