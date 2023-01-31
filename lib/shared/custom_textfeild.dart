import 'package:flutter/material.dart';




class custom_textfield extends StatelessWidget {
  final String hint;

  const custom_textfield({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.grey.shade300,

        contentPadding: const EdgeInsets.symmetric(horizontal: 34,vertical: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide.none,
        ),
         enabledBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(25),
           borderSide: BorderSide.none,
         ),
         focusedBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(25),
           borderSide: const BorderSide(
             color: Colors.orangeAccent
           ),
         )
      ),
    );
  }
}



/*


 class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({
    required this.hintText,
    required this.obscureText,
    required this.keyboardType,
    this.bottomMargin = 0,
    this.prefixIcon,
    this.onSaved,
    this.height = 65,
    this.width = double.infinity,
    this.vertical = 25,
    this.validator,
    this.controller,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    Key? key,
  }) : super(key: key);

  final String hintText;
  final bool obscureText;
  double bottomMargin;
  final TextInputType keyboardType;
  Function? validator;
  Function? onSaved;
  TextEditingController? controller;
  AutovalidateMode? autovalidateMode;
  Widget? prefixIcon;
  double height;
  double width;
  double vertical;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: bottomMargin),
      height: height,
      width: width,
      child: TextFormField(
        onSaved: onSaved as Function(String?)?,
        controller: controller,
        validator: validator as String? Function(String?)?,
        keyboardType: keyboardType,
        autovalidateMode: autovalidateMode,
        obscureText: obscureText,
        decoration: InputDecoration(
            hintText: hintText,
            errorStyle: TextStyle(fontSize: 12, height: 0.3),
            hintStyle: TextStyle(color: Color(0xFFB6B7B7)),
            filled: true,
            fillColor: GREYCOLORBACKGROUND,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 34, vertical: vertical),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none)),
      ),
    );
  }
}


 */





/*

 Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34),
      child: Container(
        height: textFeildHeight,
        width: textFeildWidth,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(28)),
          color: Color(backGroundColor),
        ),
        child: TextField(
          style: const TextStyle(
            color: Color(primaryTextColor),
          ),
          decoration: InputDecoration(
            hintText: hint,
            filled: true,
            fillColor: const Color(backGroundColor),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(28)),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.only(left: 34),
          ),
        ),
      ),
    );
 */

