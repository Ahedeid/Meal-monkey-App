


import 'package:flutter/material.dart';

import '../../../../../util/constant.dart';



class CustomCardPayment extends StatelessWidget {
  const CustomCardPayment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 205,
      child: Card(
        elevation: 20,
        color: const Color(0xffF7F7F7),
        child: Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(

                title: const Text(
                  'Cash/Card on delivery',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: sizeText),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.done,
                      color: Color(primaryColor),
                      size: 25,
                    )),
              ),
              const Divider(
                indent: 17,
                endIndent: 35,
                thickness: 1,
              ),
              ListTile(
                leading:Image.asset('assets/images/viza.jpg'),
                title: const Text(
                  '**** **** ****',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: midemTesx),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.done,
                      color: Color(primaryColor),
                      size: 25,
                    )),
              ),
              const Divider(
                indent: 17,
                endIndent: 34,
                thickness: 1,
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                child: Text('Other Methods',style: TextStyle(fontWeight: FontWeight.bold,),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
