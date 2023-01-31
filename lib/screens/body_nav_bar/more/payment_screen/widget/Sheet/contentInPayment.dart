import 'package:flutter/material.dart';

import '../../../../../../util/constant.dart';


class ContentInButtonPayment extends StatelessWidget {
  const ContentInButtonPayment({
    Key? key,
    required this.str,
  }) : super(key: key);

  final String str;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        str == 'Send Order'
            ? const Text('')
            : const Icon(
          Icons.add,
          size: 28,
        ),
        const SizedBox(width: 25),
        Text(
          str,
          style: const TextStyle(fontSize: sizeText),
        ),
      ],
    );
  }
}