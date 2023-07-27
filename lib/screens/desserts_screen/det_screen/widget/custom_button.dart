import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';

class CustomButton extends StatefulWidget {
  final String str;
  int count;

   CustomButton({super.key, required this.count, required this.str});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 52,
      child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            backgroundColor:
                MaterialStateProperty.all(const Color(primaryColor)),
          ),
          onPressed: () {
            setState(() {
              widget.str == '+' ? widget.count++ : widget.count--;
            });
          },
          child: Text(
            widget.str,
            style: const TextStyle(fontSize: 18),
          )),
    );
  }
}
