import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';

class CustomFloating extends StatelessWidget {
  final int currentIndex;

  final Function() onTab;

  const CustomFloating({
    super.key,
    required this.onTab,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: 65,
      child: FloatingActionButton(
        elevation: 10,
        focusColor: currentIndex == 2
            ? const Color(primaryColor)
            : const Color(secondaryTextColor),
        onPressed: onTab,
        backgroundColor: const Color(primaryColor),
        child: const Icon(
          Icons.home,
          size: 40,
        ),
      ),
    );
  }
}
