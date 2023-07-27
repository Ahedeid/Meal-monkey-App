import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/shared/custom_textfeild.dart';
import 'package:meal_monkey_mobile_project/shared/my_button.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';
import 'package:meal_monkey_mobile_project/util/validate_extension.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();

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
          key: signUpFormKey,
          child: SingleChildScrollView(
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
                  CustomTextFiled(
                    hintText: 'Name',
                    keyboardType: TextInputType.text,
                    validator: (val) => val!.validateUserName(),
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 28),
                  CustomTextFiled(
                    hintText: 'Email',
                    keyboardType: TextInputType.emailAddress,
                    validator: (val) => val!.validateEmail(),
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 28),
                  CustomTextFiled(
                    hintText: 'Mobile No',
                    keyboardType: TextInputType.phone,
                    validator: (val) => val!.validatePhoneNumber(),
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 28),
                  const CustomTextFiled(
                    hintText: 'Address',
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 28),
                  CustomTextFiled(
                    hintText: 'Password',
                    keyboardType: TextInputType.visiblePassword,
                    validator: (val) => val!.validatePassword(),
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                  ),
                  const SizedBox(height: 28),
                  CustomTextFiled(
                    hintText: 'Confirm Password',
                    keyboardType: TextInputType.visiblePassword,
                    validator: (val) => val!.validatePassword(),
                    textInputAction: TextInputAction.done,
                    obscureText: true,
                  ),
                  const SizedBox(height: 28),
                  CustomButton(
                      title: 'Sign Up',
                      color: const Color(primaryColor),
                      onPressed: () {
                        if (signUpFormKey.currentState!.validate()) {
                          Navigator.pushNamed(context, 'login_screen');
                        }
                      },
                      textSize: sizeText),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an Account?',
                        style: TextStyle(
                            color: Color(secondaryTextColor),
                            fontSize: sizeText),
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
        ),
      ),
    );
  }
}
