
import 'package:flutter/material.dart';

class CustomButtonMore extends StatelessWidget {
  String nav;
   CustomButtonMore({super.key,
    required this.nav,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 30,
      right: 0,
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey.shade200,
        ),
        child: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, nav);
          },
          icon:  const Icon(
            Icons.arrow_forward_ios,
            size: 20,
          ),
        ),
      ),
    );
  }
}