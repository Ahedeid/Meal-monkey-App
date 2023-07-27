import 'package:flutter/material.dart';

class CusAppBarDet extends StatelessWidget {
  const CusAppBarDet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 35,
      right: 20,
      left: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, 'my_cart');
            },
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
