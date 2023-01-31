
import 'package:flutter/material.dart';

import '../../../../util/constant.dart';





class SearchBar extends StatelessWidget {
  const SearchBar({
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