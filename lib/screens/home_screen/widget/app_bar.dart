
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../util/constant.dart';


class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
   CustomAppBar({
    required this.index
  });
   int index ;
final tex =['Menu','Latest Offers','Good morning Akila!','Profile','More',];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:10 ,vertical:10),
      child: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent, // <-- SEE HERE
          statusBarIconBrightness: Brightness.dark, //<-- For Android SEE HERE (dark icons)
          statusBarBrightness: Brightness.light, //<-- For iOS SEE HERE (dark icons)
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          tex[index],
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(primaryTextColor),
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


  @override
  // TODO: implement preferredSize
  @override

  Size get preferredSize => const Size.fromHeight(60);

}