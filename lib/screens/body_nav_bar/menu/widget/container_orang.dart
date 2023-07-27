import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';

class ContainerOrange extends StatelessWidget {
  const ContainerOrange({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width * 0.24,
      decoration: const BoxDecoration(
        color: Color(primaryColor),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(38),
          bottomRight: Radius.circular(38),
        ),
      ),
    );
  }
}
