import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/shared/custom_textfeild.dart';
import 'package:meal_monkey_mobile_project/shared/my_button.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              const SizedBox(height: 60),
              const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: largeTxt,
                  fontWeight: FontWeight.bold,
                  color: Color(primaryTextColor),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Add your details to sign up',
                style: TextStyle(
                    color: Color(secondaryTextColor), fontSize: sizeText),
              ),
              const SizedBox(height: 37),
              const CustomTextFiled(
                hintText: 'Name',
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 28),
              const CustomTextFiled(
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 28),
              const CustomTextFiled(
                hintText: 'Mobile No',
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 28),
              const CustomTextFiled(
                hintText: 'Address',
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 28),
              const CustomTextFiled(
                hintText: 'Password',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 28),
              const CustomTextFiled(
                hintText: 'Confirm Password',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 28),
               CustomButton(
                  title: 'Sign Up',
                  color: const Color(primaryColor),
                  onPressed: ()=>Navigator.pushNamed(context, 'login_screen'),
                  textSize: sizeText),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an Account?',
                    style: TextStyle(
                        color: Color(secondaryTextColor), fontSize: sizeText),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'login_screen');
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            color: Color(primaryColor), fontSize: sizeText),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
