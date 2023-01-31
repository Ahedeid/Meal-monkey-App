import 'package:flutter/material.dart';

import '../../../../util/const_assets.dart';
import 'Content_Recent_Item_inhome.dart';

class ListRecentItemsHome extends StatelessWidget {
  const ListRecentItemsHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: SizedBox(
        width: double.infinity,
        height: 100,
        child: Row(
          children: [
            Image.asset(pizza2),
            const SizedBox(width: 17),
            const ContentRecentItemInHome(),

          ],
        ),
      ),
    );
  }
}

