import 'package:flutter/material.dart';



class HeadTex extends StatelessWidget {
  String str ;
  HeadTex({super.key,
    required this.str
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Text(str,style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
    );
  }
}