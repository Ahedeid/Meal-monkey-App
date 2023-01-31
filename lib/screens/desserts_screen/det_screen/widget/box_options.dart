import 'package:flutter/material.dart';


class BoxOptions extends StatelessWidget {
  String str ;
  BoxOptions({super.key,
    required this.str
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xffF2F2F2),
            borderRadius: BorderRadius.circular(4)
        ),
        child:  ExpansionTile(
          trailing: const Icon(Icons.keyboard_arrow_down,size: 35,),
          //tilePadding: EdgeInsets.only(left: 15, right: 15),
          title: Text(
            str,
            style: const TextStyle(
              fontSize: 18,
              color: Color(0xff4A4B4D),
            ),
          ),
        ),
      ),
    );
  }
}