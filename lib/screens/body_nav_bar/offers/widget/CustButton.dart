import 'package:flutter/material.dart';

import '../../../../util/constant.dart';

class CustButtonOffer extends StatelessWidget {
  const CustButtonOffer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(Color(primaryColor)),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28),
            ),
          ),
        ),
        onPressed: () {},
        child: const Text('Check Offers'),
      ),
    );
  }
}
