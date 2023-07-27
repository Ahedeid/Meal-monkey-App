import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/screens/logins_screens/reset_password_screen/widget/reset_hedertxt.dart';
import 'package:meal_monkey_mobile_project/screens/logins_screens/reset_password_screen/widget/resrt_secandTxt.dart';
import 'package:meal_monkey_mobile_project/shared/custom_textfeild.dart';
import 'package:meal_monkey_mobile_project/shared/my_button.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';
import 'package:meal_monkey_mobile_project/util/validate_extension.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final GlobalKey<FormState> resetFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            currentFocus.focusedChild!.unfocus();
          }
        },
        child: Form(
          key: resetFormKey,
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 90),
                child: Column(
                  children: [
                    const ResetHedertxt(),
                    const SizedBox(height: 15),
                    const ResrtSecandTxt(),
                    const SizedBox(height: 60),
                     CustomTextFiled(
                      hintText: 'Email',
                      keyboardType: TextInputType.emailAddress,
                      validator: (val)=>val!.validateEmail(),
                       textInputAction: TextInputAction.done,
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    CustomButton(
                        title: 'Send',
                        color: const Color(primaryColor),
                        onPressed: (){
                          if(resetFormKey.currentState!.validate()){
                            Navigator.pushNamed(context, 'conform_screen');
                          }
                        },
                        textSize: sizeText),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
