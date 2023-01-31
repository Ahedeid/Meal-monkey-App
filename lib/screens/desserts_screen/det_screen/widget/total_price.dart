import 'package:flutter/material.dart';

import '../../../../util/constant.dart';


class TotalPrice extends StatelessWidget {
  const TotalPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:  const [
        OrangeContainer(),
        CustCard(),
        CusButton()
      ],
    );
  }
}

class CusButton extends StatelessWidget {
  const CusButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
    top: 65,
    right: 43,
    child: Container(
      width: 47,
      height: 47,
      decoration:  const BoxDecoration(
          boxShadow: [
        BoxShadow(
            color: Colors.black12,
            offset: Offset(1.5, 1.5)),
        BoxShadow(
            color: Colors.black12,
            offset: Offset(-1.5, -1.5)),
      ],
          shape: BoxShape.circle, color: Colors.white),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.shopping_cart,
          color: Color(primaryColor),
          size: 25,
        ),
      ),
    ),
      );
  }
}

class CustCard extends StatelessWidget {
  const CustCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 40, vertical: 18),
      child: SizedBox(
        width: 330,
        height: 140,
        child: Card(
          elevation: 8,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(40),
              topLeft: Radius.circular(40),
            ),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  const [
                Text(
                  'Total Price',
                  style: TextStyle(fontSize: 16,color: Color(0xff4A4B4D)),
                ),
                SizedBox(height: 4),
                Text(
                  'LKR 1500',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 5),
                CustomButtonCard()
              ]),
        ),
      ),
    );
  }
}

class CustomButtonCard extends StatelessWidget {
  const CustomButtonCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 165,
      height: 38,
      child: ElevatedButton(
        onPressed:(){},
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
                Color(primaryColor)),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(28),
                ),
              ),
            )),
        child: Row(
          children: const [
            Icon(Icons.add_shopping_cart_outlined),
            SizedBox(width: 12),
            Text('Add to Cart'),
          ],
        ),
      ),
    );
  }
}

class OrangeContainer extends StatelessWidget {
  const OrangeContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 95,
      decoration: const BoxDecoration(
        color: Color(primaryColor),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(38),
          bottomRight: Radius.circular(38),
        ),
      ),
    );
  }
}
