import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/screens/logins_screens/reset_password_screen/widget/reset_hedertxt.dart';
import 'package:meal_monkey_mobile_project/screens/logins_screens/reset_password_screen/widget/resrt_secandTxt.dart';
import '../../../shared/custom_textfeild.dart';
import '../../../shared/my_button.dart';
import '../../../util/constant.dart';



class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34,vertical: 90),
            child: Column(
              children: const [
                ResetHedertxt(),
                SizedBox(height: 15),
                ResrtSecandTxt(),
                SizedBox(height: 60),
                custom_textfield(hint: 'Email'),
                SizedBox(height: 35,),
                MyButtons(title: 'Send', mycolor: Color(primaryColor), routeName: 'conform_screen', textSize: sizeText ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



