import 'package:flutter/material.dart';

import '../../on_boarding_indicatort.dart';


class PageViewIndecator extends StatelessWidget {
  const PageViewIndecator({
    Key? key,
    required int index,
  }) : _index = index, super(key: key);

  final int _index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OnBoardingIndicator(
          marginEnd: 5,
          selected: _index == 0,
        ),
        OnBoardingIndicator(
          marginEnd: 5,
          selected: _index == 1,
        ),
        OnBoardingIndicator(
          selected: _index == 2,
        ),
      ],
    );
  }
}
