import 'package:flutter/material.dart';

import '../../../../util/constant.dart';





class HedarName extends StatelessWidget {

  String title ;

   HedarName({super.key,
    required this.title,
  }) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Text(
            title ,
            style: TextStyle(
              fontSize: largeTxt,
              color: Color(primaryTextColor),
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
              onPressed: () {},
              child: const Text(
                'View all',
                style: TextStyle(
                  color: Color(primaryColor),
                  fontSize: sizeText,
                ),
              ))
        ],
      ),
    );
  }
}