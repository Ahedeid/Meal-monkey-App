import 'package:flutter/material.dart';

import '../../../../util/constant.dart';


class ShowResultDet extends StatelessWidget {
   ShowResultDet({
    required this.count
  });
int count ;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 35,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border:Border.all(
              color: const Color(primaryColor),
              width: 2
          )
      ),
      child:  Center(child: Text('$count',style: const TextStyle(fontSize: 16),),),
    );
  }
}
