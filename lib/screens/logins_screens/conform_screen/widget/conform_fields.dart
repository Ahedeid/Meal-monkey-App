import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/screens/logins_screens/conform_screen/widget/password_feild.dart';

class ConformFields extends StatelessWidget {
  const ConformFields({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        PasswordFeild(),
        PasswordFeild(),
        PasswordFeild(),
        PasswordFeild(),
      ],
    );
  }
}
