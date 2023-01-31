import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/offers/widget/CustButton.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/offers/widget/head_offer.dart';

import '../home/widget/custom_list_ver_one.dart';


class OffersNav extends StatefulWidget {
  const OffersNav({Key? key}) : super(key: key);

  @override
  State<OffersNav> createState() => _OffersNavState();
}

class _OffersNavState extends State<OffersNav> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children:  [
        const HeadOfferSc(),
        const CustButtonOffer(),
        BodyOffer()
      ],
    );
  }
}






