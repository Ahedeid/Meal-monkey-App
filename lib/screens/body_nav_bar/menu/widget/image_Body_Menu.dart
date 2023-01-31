import 'package:flutter/material.dart';

class ImageINBodyMenu extends StatelessWidget {
  const ImageINBodyMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 75,
        height: 75,
        //  decoration: BoxDecoration(shape: BoxShape.circle),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(35),
          child: Image.asset(
            'assets/images/borg.png',
            color: Colors.black.withOpacity(0.1),
            colorBlendMode: BlendMode.darken,
          ),
        ));
  }
}
