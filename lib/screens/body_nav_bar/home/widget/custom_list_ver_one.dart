import 'package:flutter/material.dart';

import '../../../../util/const_assets.dart';
import 'contentInListHome/images_in_list_ofhome.dart';
import 'contentInListHome/mianTxt_inList_home.dart';
import 'contentInListHome/secaodtxt_list_home.dart';



class BodyOffer extends StatelessWidget {
   BodyOffer({
    Key? key,
  }) : super(key: key);

  List images= [
    pizza1,
    pizza2,
    pizza3,
    food
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
         shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              ImagesInListOfHome(index: index, images: images,),
              const MianTxtInListHome(),
              const SizedBox(height: 10),
              const SecaondTxtInListHome(),
              const SizedBox(height: 15),
            ],
          );
        },
      ),
    );
  }
}



