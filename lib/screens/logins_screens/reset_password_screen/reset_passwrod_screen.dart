import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/screens/logins_screens/reset_password_screen/widget/reset_hedertxt.dart';
import 'package:meal_monkey_mobile_project/screens/logins_screens/reset_password_screen/widget/resrt_secandTxt.dart';
import 'package:meal_monkey_mobile_project/shared/custom_textfeild.dart';
import 'package:meal_monkey_mobile_project/shared/my_button.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 90),
            child: Column(
              children: [
                const ResetHedertxt(),
                const SizedBox(height: 15),
                const ResrtSecandTxt(),
                const SizedBox(height: 60),
                const CustomTextFiled(
                  hintText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 35,
                ),
                CustomButton(
                    title: 'Send',
                    color: const Color(primaryColor),
                    onPressed: ()=>Navigator.pushNamed(context, 'conform_screen'),
                    textSize: sizeText),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
