import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Material(
        borderRadius: BorderRadius.circular(28),
        child: TextField(
          style: const TextStyle(
            color: Color(primaryTextColor),
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(backGroundColor),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
            hintText: 'Search food',
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            //  prefixIconColor: Colors.black,
          ),
        ),
      ),
    );
  }
}
