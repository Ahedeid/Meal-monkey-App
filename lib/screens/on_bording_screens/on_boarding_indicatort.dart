import 'package:flutter/material.dart';



class OnBoardingIndicatort extends StatelessWidget {

  final double marginEnd;
  final bool selected;


  const OnBoardingIndicatort({super.key, required this.selected, this.marginEnd = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: marginEnd),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: selected ? Colors.orange : Colors.grey,
          shape: BoxShape.circle),
    );
  }
}