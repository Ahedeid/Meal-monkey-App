import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'on_bording_screens/page_view/page_view.dart';


class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();
     Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const MPageView()),);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width:double.infinity,
            child: SvgPicture.asset('assets/images/Background icons.svg',
            fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: double.infinity,
            //color: Color(backGroundColor),
            child: Center(child: SvgPicture.asset('assets/images/Logo.svg')),
          ),
        ],
      ),
    );
  }
}
