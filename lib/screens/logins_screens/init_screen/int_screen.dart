import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/screens/logins_screens/init_screen/widget/init_screen_stacks.dart';
import '../../../shared/my_button.dart';
import '../../../util/constant.dart';

class IntScreen extends StatefulWidget {
  const IntScreen({Key? key}) : super(key: key);

  @override
  State<IntScreen> createState() => _IntScreenState();
}

class _IntScreenState extends State<IntScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:  [
            const InitScreenStacks(),
            const   SizedBox(height: 40),
            const  Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  '''    Discover the best foods from over 1,000 
restaurants and fast delivery to your doorstep''',
                  style: TextStyle(fontSize: sizeText),
                )),
            const   SizedBox(height: 36),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34),
              child: CustomButton(
                title: 'Login',
                color:const Color(primaryColor),
                onPressed: ()=>Navigator.pushNamed(context, 'login_screen'),
                textSize: sizeText,
              ),
            ),
            const  SizedBox(
              height: 20
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34),
              child: CustomButton(
                title: 'Create an Account',
                color:const Color(primaryColor),
                onPressed: ()=>Navigator.pushNamed(context, 'sign_up_screen'),
                textSize: sizeText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
