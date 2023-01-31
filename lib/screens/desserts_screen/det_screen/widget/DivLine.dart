import 'package:flutter/material.dart';



class DevLine extends StatelessWidget {
  const DevLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      indent: 15,
      endIndent: 15,
      thickness: 1.5,
    );
  }
}