import 'package:flutter/material.dart';
import '../../../shared/custom_textfeild.dart';
import '../../../shared/my_button.dart';
import '../../../util/constant.dart';



class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34,vertical: 90),
          child: Column(
            children: const [
              Text(
                'New Password',
                style: TextStyle(
                  fontSize: psizeText,
                  fontWeight: FontWeight.bold,
                  color: Color(primaryTextColor),
                ),
              ),
              SizedBox(height: 15),
              Text(
                '  Please enter your email to receive a link to create a new password via email',
                style: TextStyle(color: Color(secondaryTextColor),fontSize: sizeText),
              ),
              SizedBox(height: 60),
              custom_textfield(hint: 'Email'),
              SizedBox(height: 28),
              custom_textfield(hint: 'Confirm Password'),
              SizedBox(height: 35,),
              MyButtons(title: 'Next', mycolor: Color(primaryColor), routeName: 'login_screen', textSize: sizeText),
            ],
          ),
        ),
      ),
    );
  }
}
