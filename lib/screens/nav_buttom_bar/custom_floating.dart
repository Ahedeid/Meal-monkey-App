import 'package:flutter/material.dart';
import '../../util/constant.dart';


class CustomFloating extends StatelessWidget {
  int currentIndex ;
  Function() onTab ;
  CustomFloating({super.key, required this.onTab ,required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 70,
      width: 70,
      child: FloatingActionButton(
        elevation: 10,
        focusColor: currentIndex == 2 ? const Color(primaryColor):const Color(secondaryTextColor),
        onPressed: onTab ,
        backgroundColor: const Color(primaryColor),
        child: const Icon(
          Icons.home,
          size: 40,
        ),
      ),
    );
  }
}

