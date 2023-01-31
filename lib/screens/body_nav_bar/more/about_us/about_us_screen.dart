import 'package:flutter/material.dart';

import '../../../../shared/cust_appbar_other.dart';
import '../../../../util/constant.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CsutAppBarOther(txt: 'About Us',),
      body: Column(
        children: const [
          ListTile(
            minVerticalPadding: 10,
            leading: Icon( Icons.fiber_manual_record,color: Color(primaryColor),size: 18,),
            title: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore etdolore consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore etdolore consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore etdolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex eacommodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ',
              style: TextStyle(fontSize: sizeText,color: Color(0xff4A4B4D)),),
          ),
          ListTile(
            minVerticalPadding: 10,
            leading: Icon( Icons.fiber_manual_record,color: Color(primaryColor),size: 18,),
            title: Text('Lorem ipsum dolor sit amet, consectetur consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore etdolore adipiscing elit, sed do eiusmod tempor incididunt ut labore etdolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex eacommodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ',
              style: TextStyle(fontSize: sizeText,color: Color(0xff4A4B4D)),),
          ),
          ListTile(
            minVerticalPadding: 10,
            leading: Icon( Icons.fiber_manual_record,color: Color(primaryColor),size: 18,),
            title: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore etdolore magna aliqua. Ut enim ad minim veniam,  ',
              style: TextStyle(fontSize: sizeText,color: Color(0xff4A4B4D)),),
          ),
        ],
      ),
    );
  }
}
