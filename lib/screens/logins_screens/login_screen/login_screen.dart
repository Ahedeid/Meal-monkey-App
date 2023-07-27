import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/localData/shared_pref.dart';
import 'package:meal_monkey_mobile_project/shared/custom_textfeild.dart';
import 'package:meal_monkey_mobile_project/shared/my_button.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';
import 'package:meal_monkey_mobile_project/util/validate_extension.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> signInFormKey = GlobalKey<FormState>();

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
          key: signInFormKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 85),
                  const LoginHederTxt(),
                  const SizedBox(height: 12),
                  const LoginSecandTxt(
                    txt: 'Add your details to login',
                  ),
                  const SizedBox(height: 40),
                  CustomTextFiled(
                    hintText: 'Your Email',
                    keyboardType: TextInputType.emailAddress,
                    validator: (val) => val!.validateEmail(),
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 28),
                  CustomTextFiled(
                    hintText: 'Password',
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    validator: (val) => val!.validatePassword(),
                    textInputAction: TextInputAction.done,
                  ),
                  const SizedBox(height: 28),
                  CustomButton(
                      title: 'Login',
                      color: const Color(primaryColor),
                      onPressed: () {
                        if (signInFormKey.currentState!.validate()) {
                          Navigator.pushNamed(context, 'home_screen');
                          SharedPrefController().setLogedin();
                        }
                      },
                      textSize: sizeText),
                  const SizedBox(height: 15),
                  const LoginForgotTxt(),
                  const SizedBox(height: 40),
                  const LoginSecandTxt(txt: 'or Login With'),
                  const SizedBox(height: 27),
                  CustomButton(
                      title: 'Login with Facebook',
                      color: const Color(0xff367FC0),
                      onPressed: () {
                        if (signInFormKey.currentState!.validate()) {
                          Navigator.pushNamed(context, 'home_screen');
                          SharedPrefController().setLogedin();
                        }
                      },
                      textSize: sizeText),
                  const SizedBox(height: 20),
                  CustomButton(
                      title: 'Login with Google',
                      color: const Color(0xffDD4B39),
                      onPressed: () {
                        if (signInFormKey.currentState!.validate()) {
                          Navigator.pushNamed(context, 'home_screen');
                          SharedPrefController().setLogedin();
                        }
                      },
                      textSize: sizeText),
                  const SizedBox(height: 55),
                  const LoginDontAccount()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LoginDontAccount extends StatelessWidget {
  const LoginDontAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Don\'t have an Account?',
          style:
              TextStyle(color: Color(secondaryTextColor), fontSize: sizeText),
        ),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'sign_up_screen');
            },
            child: const Text(
              'Sign Up',
              style: TextStyle(color: Color(primaryColor), fontSize: sizeText),
            ))
      ],
    );
  }
}

class LoginForgotTxt extends StatelessWidget {
  const LoginForgotTxt({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.pushNamed(context, 'reset_password_screen');
        },
        child: const Text(
          'Forgot Your Password?',
          style:
              TextStyle(color: Color(secondaryTextColor), fontSize: sizeText),
        ));
  }
}

class LoginSecandTxt extends StatelessWidget {
  final String txt;

  const LoginSecandTxt({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style:
          const TextStyle(color: Color(secondaryTextColor), fontSize: sizeText),
    );
  }
}

class LoginHederTxt extends StatelessWidget {
  const LoginHederTxt({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Login',
      style: TextStyle(
        fontSize: largeTxt,
        fontWeight: FontWeight.bold,
        color: Color(primaryTextColor),
      ),
    );
  }
}
