import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/screens/logins_screens/conform_screen/widget/conform_clickHere.dart';
import 'package:meal_monkey_mobile_project/screens/logins_screens/conform_screen/widget/conform_fields.dart';
import 'package:meal_monkey_mobile_project/shared/my_button.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';

class ConformScreen extends StatefulWidget {
  const ConformScreen({Key? key}) : super(key: key);

  @override
  State<ConformScreen> createState() => _ConformScreenState();
}

class _ConformScreenState extends State<ConformScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 90),
          child: Column(children: [
            const Text(
              '''We have sent an OTP to 
           your Mobile  ''',
              style: TextStyle(
                fontSize: largeTxt,
                fontWeight: FontWeight.bold,
                color: Color(primaryTextColor),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Please check your mobile number 071*****12\n           continue to reset your password',
              style: TextStyle(
                  color: Color(secondaryTextColor), fontSize: sizeText),
            ),
            const SizedBox(height: 54),
            const ConformFields(),
            const SizedBox(height: 40),
            CustomButton(
                title: 'Next',
                color: const Color(primaryColor),
                onPressed: () =>
                    Navigator.pushNamed(context, 'new_password_screen'),
                textSize: sizeText),
            const SizedBox(height: 32),
            const ConformClickHere()
          ]),
        ),
      ),
    );
  }
}
