import 'package:flutter/material.dart';

import '../../../../util/constant.dart';




class ButtonINBodyMenu extends StatelessWidget {
  const ButtonINBodyMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.black12,
            offset: Offset(1.5, 1.5)),
        BoxShadow(
            color: Colors.black12,
            offset: Offset(-1.5, -1.5)),
      ], shape: BoxShape.circle, color: Colors.white),
      child: IconButton(
        onPressed: () {
         Navigator.pushNamed(context, 'desserts_screen');
        },
        icon: const Icon(
          Icons.arrow_forward_ios,
          color: Color(primaryColor),
          size: 20,
        ),
      ),
    );
  }
}