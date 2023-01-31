import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/more/widget/body_more.dart';



class MoreNav extends StatefulWidget {
  const MoreNav({Key? key}) : super(key: key);

  @override
  State<MoreNav> createState() => _MoreNavState();
}

class _MoreNavState extends State<MoreNav> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
      child: ListView(
        children: [
          BodyMore(image: 'assets/icons/002-income.svg',str: 'Payment Details',nav: 'payment_screen'),
          const SizedBox(height: 19),
          BodyMore(image: 'assets/icons/shopping-bag.svg',str: 'My Orders',nav: 'myoeder_screen'),
          const SizedBox(height: 19),
          BodyMore(image: 'assets/icons/Group 8081.svg',str: 'Notifications',nav: 'Notification_screen'),
          const SizedBox(height: 19),
          BodyMore(image: 'assets/icons/004-inbox-mail.svg',str: 'Inbox',nav: 'inboxScreen_screen'),
          const SizedBox(height: 19),
          BodyMore(image: 'assets/icons/005-info.svg',str: 'About Us',nav: 'aboutUsScreen_screen'),
        ],
      ),
    );
  }
}

