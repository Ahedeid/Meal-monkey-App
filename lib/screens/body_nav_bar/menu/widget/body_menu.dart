import 'package:flutter/material.dart';

import 'card_menu_body.dart';
import 'container_orang.dart';


class BodyMenu extends StatelessWidget {
  const BodyMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          const ContainerOrange(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 15),
            child: Expanded(
              child: ListView(
                shrinkWrap: true,
                children: const [
                  CardMuneBady(),
                  SizedBox(height: 20),
                  CardMuneBady(),
                  SizedBox(height: 20),
                  CardMuneBady(),
                  SizedBox(height: 20),
                  CardMuneBady(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

