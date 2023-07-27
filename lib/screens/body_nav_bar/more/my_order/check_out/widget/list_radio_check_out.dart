import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';

class ListRadioCheckOut extends StatefulWidget {
  const ListRadioCheckOut({
    super.key,
    required this.val,
    required this.txt,
    required this.image,
  });

  final int val;

  final String txt;

  final String image;

  @override
  State<ListRadioCheckOut> createState() => _ListRadioCheckOutState();
}

class _ListRadioCheckOutState extends State<ListRadioCheckOut> {
  int radioVal = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 5),
      child: RadioListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          tileColor: const Color(0xffF6F6F6),
          activeColor: const Color(primaryColor),
          //contentPadding: EdgeInsets.symmetric(horizontal: 10),
          controlAffinity: ListTileControlAffinity.trailing,
          title: Row(
            children: [
              SvgPicture.asset(widget.image),
              const SizedBox(width: 8),
              Text(widget.txt),
            ],
          ),
          value: widget.val,
          groupValue: radioVal,
          onChanged: (value) {
            setState(() {
              radioVal = value!;
            });
          }),
    );
  }
}
