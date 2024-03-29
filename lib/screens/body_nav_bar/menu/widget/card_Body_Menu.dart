import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';


class CardINBodyMenu extends StatelessWidget {
  const CardINBodyMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 35, right: 14),
      child: SizedBox(
        height: 100,
        child: Card(
          elevation: 8,
          // shadowColor: Color(0xff00000029),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
              bottomLeft: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 56, top: 18),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Food',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '25 Item',
                    style: TextStyle(
                      fontSize: sizeText,
                      color: Color(secondaryTextColor),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
