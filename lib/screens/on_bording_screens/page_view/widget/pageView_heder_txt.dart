import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/models/p_models.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';

class PageViewHeaderTxt extends StatelessWidget {
  const PageViewHeaderTxt({
    Key? key,
    required List<PageModel> data,
    required int index,
  })  : _data = data,
        _index = index,
        super(key: key);

  final List<PageModel> _data;
  final int _index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 60,
        child: Text(
          _data[_index].title,
          style: const TextStyle(
              fontSize: largeTxt,
              fontWeight: FontWeight.bold,
              color: Color(primaryTextColor)),
        ));
  }
}
