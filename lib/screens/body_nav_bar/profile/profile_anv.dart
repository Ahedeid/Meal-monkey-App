import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/profile/widget/col_txt.dart';


import '../../../shared/custom_textfeild.dart';
import '../../../shared/my_button.dart';
import '../../../util/constant.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 34,),
          child: SingleChildScrollView(
            child: Column(
              children:  const [
                CircleAvatar(
                  maxRadius: 45,
                  backgroundImage: AssetImage('assets/images/user.png'),
                ),
                SizedBox(height: 8),
                ColTxt(),
                SizedBox(height: 8),
                Text('Hi there Emilia!',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                SizedBox(height: 2),
                Text('Sign Out',style: TextStyle(color: Color(secondaryTextColor)),),
                SizedBox(height: 20),
                custom_textfield(hint: 'Name'),
                SizedBox(height: 12),
                custom_textfield(hint: 'Email'),
                SizedBox(height: 12),
                custom_textfield(hint: 'Mobile No'),
                SizedBox(height: 12),
                custom_textfield(hint: 'Password'),
                SizedBox(height: 12),
                custom_textfield(hint: 'Confirm Password'),
                SizedBox(height: 12),
                MyButtons(title: 'Save', mycolor: Color(primaryColor), routeName: '', textSize: sizeText,),
              SizedBox(height: 50)
              ],
            ),
          ),
        ),
      ),
    );
  }
}


