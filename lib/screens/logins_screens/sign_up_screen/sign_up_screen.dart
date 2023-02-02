import 'package:flutter/material.dart';
import '../../../shared/custom_textfeild.dart';
import '../../../shared/my_button.dart';
import '../../../util/constant.dart';



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
                style: TextStyle(color: Color(secondaryTextColor),fontSize: sizeText),
              ),
              const SizedBox(height: 37),
              const custom_textfield(hint: 'Name'),
              const SizedBox(height: 28),
              const custom_textfield(hint: 'Email'),
              const SizedBox(height: 28),
              const custom_textfield(hint: 'Mobile No'),
              const SizedBox(height: 28),
              const custom_textfield(hint: 'Address'),
              const SizedBox(height: 28),
              const custom_textfield(hint: 'Password'),
              const SizedBox(height: 28),
              const custom_textfield(hint: 'Confirm Password'),
              const SizedBox(height: 28),
              const MyButtons(
                  title: 'Sign Up',
                  mycolor: Color(primaryColor),
                  routeName: 'login_screen',
                  textSize: sizeText),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an Account?',
                    style: TextStyle(color: Color(secondaryTextColor),fontSize: sizeText),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'login_screen');
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Color(primaryColor),fontSize: sizeText),
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
