import 'package:flutter/material.dart';

import '../../../../../util/constant.dart';


class SumTxtOfFirsSectionMyOrder extends StatelessWidget {
  const SumTxtOfFirsSectionMyOrder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 5),
        const Text('King Burgers',style: TextStyle(fontSize: mediumTxt,fontWeight: FontWeight.bold),),
        const SizedBox(height: 5),
        Row(children: const[
          Icon(Icons.star,color: Color(primaryColor),size: 18,),
          SizedBox(width: 5),
          Text('4.9',style: TextStyle(color: Color(primaryColor)),),
          SizedBox(width: 5),
          Text('(124 ratings)',style: TextStyle(color: Color(secondaryTextColor),),),
        ],),
        const SizedBox(height: 5),
        const Text('Burger  Western Food',style: TextStyle(color: Color(secondaryTextColor)),),
        const SizedBox(height: 5),
        Row(children: const[
          Icon(Icons.location_on,color: Color(primaryColor),size: 18,),
          SizedBox(width: 5),
          Text('No 03, 4th Lane, Newyork',style: TextStyle(color: Color(secondaryTextColor),),),
        ],)
      ],
    );
  }
}