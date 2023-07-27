import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';


class CustomAppBarDesserts extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBarDesserts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:10 ,vertical:10),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Desserts',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(primaryTextColor),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ))
        ],
      ),
    );
  }


  // TODO: implement preferredSize
  @override
  Size get preferredSize => const Size.fromHeight(80);

}