import 'package:flutter/material.dart';

import '../util/constant.dart';



class MyButtons extends StatelessWidget {

  final String title ;
  final Color mycolor ;
  final String routeName ;
  final double textSize ;

  const MyButtons({super.key,
    required this.title ,required this.mycolor ,required this.routeName,required this.textSize
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
       title=='Checkout'? Navigator.pushNamed(context, routeName)
           : Navigator.pushReplacementNamed(context, routeName);

      },
      style: title == 'Create an Account'?
      ButtonStyle(
          minimumSize: MaterialStateProperty.all(const Size(buttonWidth, buttonHeight)),
          backgroundColor: MaterialStateProperty.all(const Color(backGroundColor)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(28),side:const BorderSide(color: Color(primaryColor),width: 2))))

          : ButtonStyle(
        minimumSize: MaterialStateProperty.all( const Size(buttonWidth, buttonHeight)),
        backgroundColor: MaterialStateProperty.all(mycolor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(28),),
        ),
      ),
      child:  Text(title,style: TextStyle(fontSize: textSize,color:  title == 'Create an Account'? const Color(primaryColor): Color(textInButtonColor)),),
    );
  }
}