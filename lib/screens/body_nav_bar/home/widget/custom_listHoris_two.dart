import 'package:flutter/material.dart';

import '../../../../util/const_assets.dart';
import '../../../../util/constant.dart';


class CustomListHorisTwo extends StatelessWidget {
  const CustomListHorisTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: SizedBox(
        width: double.infinity,
        height: 170,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsetsDirectional.only(end: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: 240,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              coffe,
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Café De Bambaa',
                      style: TextStyle(
                        color: Color(primaryTextColor),
                        fontWeight: FontWeight.bold,
                        fontSize: mediumTxt,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: const [
                        Text(
                          'Café Western Food',
                          style: TextStyle(
                            color: Color(secondaryTextColor),

                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.star,color: Color(primaryColor),size: 18,),
                        SizedBox(width: 5),
                        Text(
                          '4.9',
                          style: TextStyle(
                            color: Color(primaryColor),

                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
