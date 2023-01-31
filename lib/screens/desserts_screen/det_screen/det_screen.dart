import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/screens/desserts_screen/det_screen/widget/DivLine.dart';
import 'package:meal_monkey_mobile_project/screens/desserts_screen/det_screen/widget/Rating_pos.dart';
import 'package:meal_monkey_mobile_project/screens/desserts_screen/det_screen/widget/box_options.dart';
import 'package:meal_monkey_mobile_project/screens/desserts_screen/det_screen/widget/custom_appbar_det.dart';
import 'package:meal_monkey_mobile_project/screens/desserts_screen/det_screen/widget/decrip_det.dart';
import 'package:meal_monkey_mobile_project/screens/desserts_screen/det_screen/widget/head_txt.dart';
import 'package:meal_monkey_mobile_project/screens/desserts_screen/det_screen/widget/image_det.dart';
import 'package:meal_monkey_mobile_project/screens/desserts_screen/det_screen/widget/num_of_portions.dart';
import 'package:meal_monkey_mobile_project/screens/desserts_screen/det_screen/widget/total_price.dart';


class DetScreen extends StatefulWidget {
  const DetScreen({Key? key}) : super(key: key);

  @override
  State<DetScreen> createState() => _DetScreenState();
}

class _DetScreenState extends State<DetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        alignment: Alignment.center,
        children: [
          ListView(
            children: [
              const ImageDet(),
              const RatingPos(),
              const SizedBox(height: 15),
              HeadTex(str: 'Descriptions'),
              const DescriptionDet(),
              const DevLine(),
              const SizedBox(height: 15),
              HeadTex(str: 'Customize your Order'),
              const SizedBox(height: 15),
              BoxOptions(str: '- Select the size of portion -'),
              BoxOptions(str: '- Select the ingredients -'),
              const SizedBox(height: 15),
               NumOfPortions(),
              const SizedBox(height: 35),
              const TotalPrice()
            ],
          ),
          const CusAppBarDet(),
        ],
      ),
    );
  }
}

