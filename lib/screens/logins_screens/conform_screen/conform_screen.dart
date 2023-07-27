import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/screens/logins_screens/conform_screen/widget/conform_clickHere.dart';
import 'package:meal_monkey_mobile_project/screens/logins_screens/conform_screen/widget/conform_fields.dart';
import '../../../shared/my_button.dart';
import '../../../util/constant.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 34,vertical: 90),
          child: Column(
              children:  [
            Text(
              '''We have sent an OTP to 
           your Mobile  ''',
              style: TextStyle(
                fontSize: largeTxt,
                fontWeight: FontWeight.bold,
                color: Color(primaryTextColor),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Please check your mobile number 071*****12\n           continue to reset your password',
              style:
                  TextStyle(color: Color(secondaryTextColor), fontSize: sizeText),
            ),
            SizedBox(height: 54),
            ConformFields(),
            SizedBox(height: 40),
            CustomButton(
                title: 'Next',
                color: Color(primaryColor),
                onPressed: ()=>Navigator.pushNamed(context, 'new_password_screen'),
                textSize: sizeText),
            SizedBox(height: 32),
            ConformClickHere()
          ]),
        ),
      ),
    );
  }
}



