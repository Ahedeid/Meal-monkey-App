import 'package:flutter/material.dart';
import '../../../shared/custom_textfeild.dart';
import '../../../shared/my_button.dart';
import '../../../util/constant.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 85),
              const LoginHederTxt(),
              const SizedBox(height: 12,),
               LoginSecandTxt(txt: 'Add your details to login',),
              const SizedBox(height: 40),
              const custom_textfield(hint: 'Your Email'),
              const SizedBox(height: 28),
              const custom_textfield(hint: 'Password'),
              const SizedBox(height: 28),
              const MyButtons(
                  title: 'Login',
                  mycolor: Color(primaryColor),
                  routeName: 'home_screen',
                  textSize: sizeText),
              const SizedBox(height: 15),
              const LoginForgotTxt(),
              const SizedBox(height: 40),
             LoginSecandTxt(txt: 'or Login With'),
              const SizedBox(height: 27),
              const MyButtons(
                  title: 'Login with Facebook',
                  mycolor: Color(0xff367FC0),
                  routeName: 'home_screen',
                  textSize: sizeText),
              const SizedBox(height: 20),
              const MyButtons(
                  title: 'Login with Google',
                  mycolor: Color(0xffDD4B39),
                  routeName: 'home_screen',
                  textSize: sizeText),
              const SizedBox(height:55),
              const LoginDontAccount()
            ],
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
      const Text('Don\'t have an Account?',style: TextStyle(color: Color(secondaryTextColor),fontSize: sizeText),),
      TextButton(onPressed: (){
        Navigator.pushNamed(context, 'sign_up_screen');
      }, child: const Text('Sign Up',style: TextStyle(color: Color(primaryColor),fontSize: sizeText),))
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
          style: TextStyle(
            color: Color(secondaryTextColor),fontSize: sizeText
          ),
        ));
  }
}

class LoginSecandTxt extends StatelessWidget {
  String txt ;
   LoginSecandTxt({
    required this.txt
  });

  @override
  Widget build(BuildContext context) {
    return  Text(
      txt,
      style: const TextStyle(color: Color(secondaryTextColor),fontSize: sizeText),
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


