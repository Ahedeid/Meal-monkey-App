import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/profile/widget/col_txt.dart';
import 'package:meal_monkey_mobile_project/shared/custom_textfeild.dart';
import 'package:meal_monkey_mobile_project/shared/my_button.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';

class ProfileNav extends StatefulWidget {
  const ProfileNav({Key? key}) : super(key: key);

  @override
  State<ProfileNav> createState() => _ProfileNavState();
}

class _ProfileNavState extends State<ProfileNav> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 34,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CircleAvatar(
                  maxRadius: 45,
                  backgroundImage: AssetImage('assets/images/user.png'),
                ),
                SizedBox(height: 8),
                ColTxt(),
                SizedBox(height: 8),
                Text(
                  'Hi there Emilia!',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 2),
                Text(
                  'Sign Out',
                  style: TextStyle(color: Color(secondaryTextColor)),
                ),
                SizedBox(height: 20),
                CustomTextFiled(
                  hintText: 'Name',
                  keyboardType: TextInputType.text,
                ),
                SizedBox(height: 12),
                CustomTextFiled(
                  hintText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 12),
                CustomTextFiled(
                  hintText: 'Mobile No',
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 12),
                CustomTextFiled(
                  hintText: 'Password',
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
                SizedBox(height: 12),
                CustomTextFiled(
                  hintText: 'Confirm Password',
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
                SizedBox(height: 12),
                CustomButton(
                  title: 'Save',
                  color: Color(primaryColor),
                  onPressed: (){},
                  textSize: sizeText,
                ),
                SizedBox(height: 50)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
