import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/more/Inbox/widget/custom_title_inbox.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/more/Inbox/widget/custom_trailing_inbox.dart';
import 'package:meal_monkey_mobile_project/shared/cust_appbar_other.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBarOther(
          txt: 'Inbox',
        ),
        body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return const ListTile(
              horizontalTitleGap: 5,
              minVerticalPadding: 12,
              leading: Icon(
                Icons.fiber_manual_record,
                color: Color(primaryColor),
                size: 18,
              ),
              title: CustomTitleIndox(),
              trailing: CustomTrailingInbox(),
            );
          },
        ));
  }
}
