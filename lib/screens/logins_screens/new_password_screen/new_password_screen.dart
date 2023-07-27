import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/shared/custom_textfeild.dart';
import 'package:meal_monkey_mobile_project/shared/my_button.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';
import 'package:meal_monkey_mobile_project/util/validate_extension.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  final GlobalKey<FormState> newPasswordFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            currentFocus.focusedChild!.unfocus();
          }
        },
        child: Form(
          key: newPasswordFormKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 90),
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
                  const Text(
                    '  Please enter your email to receive a link to create a new password via email',
                    style: TextStyle(
                        color: Color(secondaryTextColor), fontSize: sizeText),
                  ),
                  const SizedBox(height: 60),
                   CustomTextFiled(
                    hintText: 'Email',
                    keyboardType: TextInputType.emailAddress,
                    validator: (val)=> val!.validatePassword(),
                     textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 28),
                   CustomTextFiled(
                    hintText: 'Confirm Password',
                    keyboardType: TextInputType.text,
                    validator: (val)=> val!.validatePassword(),
                     textInputAction: TextInputAction.done,
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  CustomButton(
                      title: 'Next',
                      color: const Color(primaryColor),
                      onPressed: () {
                        if (newPasswordFormKey.currentState!.validate()) {
                          Navigator.pushNamed(context, 'login_screen');
                        }
                      },
                      textSize: sizeText),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
