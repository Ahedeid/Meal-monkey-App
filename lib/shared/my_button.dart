import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';

class CustomButton extends StatelessWidget {
  final String title;

  final Color color;

  final double textSize;

  final void Function()? onPressed;

  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.title,
      required this.color,
      required this.textSize});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: title == 'Create an Account'
          ? ButtonStyle(
              minimumSize: MaterialStateProperty.all(
                  const Size(buttonWidth, buttonHeight)),
              backgroundColor:
                  MaterialStateProperty.all(const Color(backGroundColor)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                  side: const BorderSide(color: Color(primaryColor), width: 2),
                ),
              ),
            )
          : ButtonStyle(
              minimumSize: MaterialStateProperty.all(
                  const Size(buttonWidth, buttonHeight)),
              backgroundColor: MaterialStateProperty.all(color),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
            ),
      child: Text(
        title,
        style: TextStyle(
            fontSize: textSize,
            color: title == 'Create an Account'
                ? const Color(primaryColor)
                : const Color(textInButtonColor)),
      ),
    );
  }
}
