import 'package:flutter/material.dart';

import '../../../../util/constant.dart';

class PasswordFeild extends StatelessWidget {
  const PasswordFeild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          color: const Color(backGroundColor),
          borderRadius: BorderRadius.circular(13)),
      child: TextField(
        style: const TextStyle(color: Colors.black, fontSize: 35),
        decoration: InputDecoration(
            contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13),
                borderSide: BorderSide.none)),
        obscureText: true,
        obscuringCharacter: '*',
      ),
    );
  }
}
