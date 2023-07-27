import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';

class HeaderName extends StatelessWidget {
  final String title;

  const HeaderName({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: largeTxt,
              color: Color(primaryTextColor),
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
              onPressed: () {},
              child: const Text(
                'View all',
                style: TextStyle(
                  color: Color(primaryColor),
                  fontSize: sizeText,
                ),
              ))
        ],
      ),
    );
  }
}
