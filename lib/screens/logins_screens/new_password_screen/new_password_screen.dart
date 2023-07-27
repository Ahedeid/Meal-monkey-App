import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/shared/custom_textfeild.dart';
import 'package:meal_monkey_mobile_project/shared/my_button.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 34, vertical: 90),
          child: Column(
            children: [
              const Text(
                'New Password',
                style: TextStyle(
                  fontSize: largeTxt,
                  fontWeight: FontWeight.bold,
                  color: Color(primaryTextColor),
                ),
              ),
              const SizedBox(height: 15),
              const    Text(
                '  Please enter your email to receive a link to create a new password via email',
                style: TextStyle(
                    color: Color(secondaryTextColor), fontSize: sizeText),
              ),
              const  SizedBox(height: 60),
              const   CustomTextFiled(
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
              ),
              const  SizedBox(height: 28),
              const  CustomTextFiled(
                hintText: 'Confirm Password',
                keyboardType: TextInputType.text,
              ),
              const     SizedBox(
                height: 35,
              ),
               CustomButton(
                  title: 'Next',
                  color:const Color(primaryColor),
                  onPressed: ()=>Navigator.pushNamed(context, 'login_screen'),
                  textSize: sizeText),
            ],
          ),
        ),
      ),
    );
  }
}
