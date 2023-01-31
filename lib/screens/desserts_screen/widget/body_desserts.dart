import 'package:flutter/material.dart';

import '../../../util/constant.dart';

class BodyDesserts extends StatelessWidget {
  const  BodyDesserts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, 'det_screen');
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset('assets/images/food.png',color: Colors.black.withOpacity(0.2),
                colorBlendMode: BlendMode.darken,),
            ),
            const Positioned(
              bottom: 50,
              left: 25,
              child: Text(
                'French Apple Pie',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Positioned(
              bottom: 20,
              child: Row(
                children: const [
                  SizedBox(width: 22),
                  Icon(
                    Icons.star_outlined,
                    color: Color(primaryColor),
                    size: 25,
                  ),
                  SizedBox(width: 5),
                  Text(
                    '562',
                    style: TextStyle(
                        fontSize: sizeText, color: Color(primaryColor)),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Minute by tuk tuk     Desserts',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: sizeText,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
