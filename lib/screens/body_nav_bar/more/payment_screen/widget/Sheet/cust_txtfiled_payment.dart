import 'package:flutter/material.dart';

import '../../../../../../util/constant.dart';






class Cust_txtfiled_payment extends StatelessWidget {
  final String hint;
  final double wSizeFelid;

   const Cust_txtfiled_payment({super.key,required this.wSizeFelid, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: SizedBox(
        height: textFieldHeight,
        width: wSizeFelid,
        child: TextField(
          decoration: InputDecoration(
            prefix: const Text("       "),
            hintText: hint,
            hintStyle: const TextStyle(color: Color(primaryTextColor)),
            filled: true,
            fillColor: const Color(backGroundColor),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(50)),
          ),
        ),
      ),
    );
  }
}

