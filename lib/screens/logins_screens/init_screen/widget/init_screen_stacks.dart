import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meal_monkey_mobile_project/util/const_assets.dart';

class InitScreenStacks extends StatelessWidget {
  const InitScreenStacks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
                width: double.infinity,
                height: 390,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    spreadRadius: 15,
                    blurRadius: 5,
                    color: Colors.grey.shade300,
                    blurStyle: BlurStyle.normal,
                  ),
                ]),
                child: SvgPicture.asset(
                  backgroundinitScreen,
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              height: 130,
            )
          ],
        ),
        Positioned(
          right: 1,
          left: 1,
          bottom: 0,
          child: SvgPicture.asset(logo),
        )
      ],
    );
  }
}
