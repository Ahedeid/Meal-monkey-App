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
    return SingleChildScrollView(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 34,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CircleAvatar(
                  maxRadius: 45,
                  backgroundImage: AssetImage('assets/images/user.png'),
                ),
                const SizedBox(height: 8),
                const ColTxt(),
                const SizedBox(height: 8),
                const Text(
                  'Hi there Emilia!',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 2),
                const Text(
                  'Sign Out',
                  style: TextStyle(color: Color(secondaryTextColor)),
                ),
                const SizedBox(height: 20),
                const CustomTextFiled(
                  hintText: 'Name',
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 12),
                const CustomTextFiled(
                  hintText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 12),
                const CustomTextFiled(
                  hintText: 'Mobile No',
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 12),
                const CustomTextFiled(
                  hintText: 'Password',
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
                const SizedBox(height: 12),
                const CustomTextFiled(
                  hintText: 'Confirm Password',
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
                const SizedBox(height: 12),
                CustomButton(
                  title: 'Save',
                  color: const Color(primaryColor),
                  onPressed: () {},
                  textSize: sizeText,
                ),
                const SizedBox(height: 50)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
