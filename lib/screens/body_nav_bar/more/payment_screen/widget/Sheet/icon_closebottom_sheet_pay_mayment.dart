import 'package:flutter/material.dart';


class IconCloseBottomSeetPayMayment extends StatelessWidget {
  const IconCloseBottomSeetPayMayment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 5),
          IconButton(onPressed:(){
            Navigator.pop(context);
          },
            icon: const Icon(Icons.close),),
        ],
      ),
    );
  }
}