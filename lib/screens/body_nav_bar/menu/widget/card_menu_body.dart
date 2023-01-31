import 'package:flutter/material.dart';

import '../../../../util/constant.dart';
import 'button_Body_Menu.dart';
import 'card_Body_Menu.dart';
import 'image_Body_Menu.dart';



class CardMuneBady extends StatelessWidget {
  const CardMuneBady({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:  [
        InkWell(
            onTap: (){
              Navigator.pushNamed(context, 'desserts_screen');
            },
            child: const CardINBodyMenu()),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ImageINBodyMenu(),
              ButtonINBodyMenu()
            ],
          ),
        )

      ],
    );
  }
}



