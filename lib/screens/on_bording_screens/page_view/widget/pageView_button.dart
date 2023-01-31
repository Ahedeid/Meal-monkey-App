import 'package:flutter/material.dart';

import '../../../../util/constant.dart';


class PageViewButton extends StatelessWidget {
  const PageViewButton({
    Key? key,
    required int index,
    required PageController controller,
  }) : _index = index, _controller = controller, super(key: key);

  final int _index;
  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _index==2? Navigator.pushReplacementNamed(context, 'int_screen'):
        _controller.nextPage(duration: const Duration(seconds: 1), curve:Curves.easeInOut);
      },
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(buttonWidth, buttonHeight)),
        backgroundColor: MaterialStateProperty.all(const Color(primaryColor)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
        ),
      ),
      child: const Text(
        'Next',
        style: TextStyle(fontSize: sizeText),
      ),
    );
  }
}
