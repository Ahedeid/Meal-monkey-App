import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CusContainerMore extends StatelessWidget {
  const CusContainerMore({
    Key? key,
    required this.image,
    required this.str,
  }) : super(key: key);

  final String image;
  final String str;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18),
      child: Container(
        height: 95,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const SizedBox(width: 15),
            CircleAvatar(
              backgroundColor: const Color(0xffD8D8D8),
              radius: 32,
              child: SvgPicture.asset(
                image,
                height: str == 'Inbox' ? 20 : 30,
              ),
            ),
            const SizedBox(width: 20),
            Text(
              str,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}