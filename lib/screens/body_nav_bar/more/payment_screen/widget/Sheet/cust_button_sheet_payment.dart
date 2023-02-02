import 'package:flutter/material.dart';

import '../../../../../../util/constant.dart';







class CustButtonSheetPayMent extends StatelessWidget {
  const CustButtonSheetPayMent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 30),
      child: SizedBox(
        height: 65,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
            const MaterialStatePropertyAll(Color(primaryColor)),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35),
              ),
            ),
          ),
          onPressed: () {},
          child: Row(
            children: const [
              SizedBox(width: 60),
              Icon(
                Icons.add,
                size: 30,
              ),
              SizedBox(width: 33),
              Text(
                'Add Card',
                style: TextStyle(fontSize: mediumTxt),
              ),
            ],
          ),),
      ),
    );
  }
}