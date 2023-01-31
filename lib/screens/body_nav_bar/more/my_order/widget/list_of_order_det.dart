import 'package:flutter/material.dart';

import '../../../../../util/constant.dart';


class ListOfOrderDet extends StatelessWidget {
  String name;
  String prise ;
  final bool isbold;
  Color colors;
  double size ;
  ListOfOrderDet({super.key,
    required this.name,required this.prise, required this.isbold, required this.colors,required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        Text(name,style:  TextStyle(fontSize: sizeText,fontWeight: isbold == true ? FontWeight.bold:FontWeight.normal)),
        Text(prise,style:  TextStyle(fontSize: size,color:colors ),),
      ],
    );
  }
}
