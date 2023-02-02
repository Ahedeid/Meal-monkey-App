import 'package:flutter/material.dart';

import '../../../../shared/cust_appbar_other.dart';
import '../../../../util/constant.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CsutAppBarOther(txt: 'Notifications',),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context,index){
        return  ListTile(
           minVerticalPadding: 12,
          leading: const Icon( Icons.fiber_manual_record,color: Color(primaryColor),size: 18,),
          title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
            Text('Your orders has been picked up',style: TextStyle(fontSize: mediumTxt,),),
            SizedBox(height: 5),
            Text('Now',style: TextStyle(color: Color(secondaryTextColor)),),
          ]),
        );
      },)
    );
  }
}
