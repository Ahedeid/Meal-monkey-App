import 'package:flutter/material.dart';

import 'body_desserts.dart';

class BodyDessertsScreen extends StatelessWidget {
  const BodyDessertsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SearchBar(),
        SizedBox(height: 20),
        BodyDesserts(),
        SizedBox(height: 4),
        BodyDesserts(),
        SizedBox(height: 4),
        BodyDesserts(),
        SizedBox(height: 4),
        BodyDesserts(),
        SizedBox(height: 4),
        BodyDesserts(),
        SizedBox(height: 4),
        BodyDesserts(),
        SizedBox(height: 4),
        BodyDesserts(),
        SizedBox(height: 4),
        BodyDesserts(),
        SizedBox(height: 4),
      ],
    );
  }
}
