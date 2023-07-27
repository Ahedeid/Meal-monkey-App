import 'package:flutter/material.dart';

import 'list_recent_item_home.dart';

class CustomListViewVerTwo extends StatelessWidget {
  const CustomListViewVerTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return const ListRecentItemsHome();
              })),
    );
  }
}
