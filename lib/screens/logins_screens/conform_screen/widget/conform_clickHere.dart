import 'package:flutter/material.dart';

import '../../../../util/constant.dart';

class ConformClickHere extends StatelessWidget {
  const ConformClickHere({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Didn\'t Receive?',
          style: TextStyle(
              color: Color(secondaryTextColor), fontSize: sizeText),
        ),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '');
            },
            child: const Text(
              'Click Here',
              style:
              TextStyle(color: Color(primaryColor), fontSize: sizeText),
            ))
      ],
    );
  }
}
