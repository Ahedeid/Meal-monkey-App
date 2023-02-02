import 'package:flutter/material.dart';

import '../../../../../../util/constant.dart';

class ChangeAddress extends StatelessWidget {
  const ChangeAddress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            '''653 Nostrand Ave., 
Brooklyn, NY 11216''',
            style: TextStyle(fontSize: mediumTxt, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'change_address_screen');
            },
            child: const Text(
              'Change',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: mediumTxt,
                color: Color(primaryColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
