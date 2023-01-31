import 'package:flutter/material.dart';

import '../../../../../util/constant.dart';


class CustomTrailingInbox extends StatelessWidget {
  const CustomTrailingInbox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          '6th July',
          style: TextStyle(color: Color(secondaryTextColor)),
        ),
        const SizedBox(height: 15),
        Expanded(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.star_outline,
                color: Color(primaryColor),
              ),
            ))
      ],
    );
  }
}