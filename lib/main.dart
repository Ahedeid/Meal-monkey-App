import 'package:flutter/material.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/more/Inbox/inbox_screen.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/more/about_us/about_us_screen.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/more/my_order/check_out/change_address/widget/change_address.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/more/my_order/check_out/check_out_screen.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/more/my_order/my_order.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/more/notifications/notification_screen.dart';
import 'package:meal_monkey_mobile_project/screens/body_nav_bar/more/payment_screen/payment_screen.dart';
import 'package:meal_monkey_mobile_project/screens/desserts_screen/desserts_screen.dart';
import 'package:meal_monkey_mobile_project/screens/desserts_screen/det_screen/det_screen.dart';
import 'package:meal_monkey_mobile_project/screens/home_screen/home_screen.dart';
import 'package:meal_monkey_mobile_project/screens/launch_screen.dart';
import 'package:meal_monkey_mobile_project/screens/logins_screens/conform_screen/conform_screen.dart';
import 'package:meal_monkey_mobile_project/screens/logins_screens/init_screen/int_screen.dart';
import 'package:meal_monkey_mobile_project/screens/logins_screens/login_screen/login_screen.dart';
import 'package:meal_monkey_mobile_project/screens/logins_screens/new_password_screen/new_password_screen.dart';
import 'package:meal_monkey_mobile_project/screens/logins_screens/reset_password_screen/reset_passwrod_screen.dart';
import 'package:meal_monkey_mobile_project/screens/logins_screens/sign_up_screen/sign_up_screen.dart';
import 'package:meal_monkey_mobile_project/screens/on_bording_screens/page_view/page_view.dart';



void main ()=> runApp(const MonkeyApp());

class MonkeyApp extends StatelessWidget {
  const MonkeyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'launch_screen',
      // onGenerateRoute: ,
      routes: {
        'launch_screen':(context)=>const LaunchScreen(),
        'int_screen':(context)=>const IntScreen(),
        'page_view':(context)=>const MPageView(),
        'login_screen':(context)=>const LoginScreen(),
        'sign_up_screen':(context)=>const SignUp(),
        'reset_password_screen':(context)=>const ResetPassword(),
        'conform_screen':(context)=>const ConformScreen(),
        'new_password_screen':(context)=>const NewPasswordScreen(),
        'home_screen':(context)=>const HomeScreen(),
        'desserts_screen':(context)=>const DessertsScreen(),
        'det_screen':(context)=>const DetScreen(),
        'payment_screen':(context)=>const PaymentScreen(),
        'Notification_screen':(context)=>const NotificationScreen(),
        'aboutUsScreen_screen':(context)=>const AboutUsScreen(),
        'inboxScreen_screen':(context)=>const InboxScreen(),
        'myoeder_screen':(context)=>const MyOederScreen(),
        'check_out_screen':(context)=> const CheckOutScreen(),
        'change_address_screen':(context)=> const ChangeAddressScreen(),
      },
    );
  }
}
