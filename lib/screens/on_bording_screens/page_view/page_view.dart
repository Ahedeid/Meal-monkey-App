import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meal_monkey_mobile_project/screens/on_bording_screens/page_view/widget/pageView_button.dart';
import 'package:meal_monkey_mobile_project/screens/on_bording_screens/page_view/widget/pageView_heder_txt.dart';
import 'package:meal_monkey_mobile_project/screens/on_bording_screens/page_view/widget/pageView_indecator.dart';
import 'package:meal_monkey_mobile_project/screens/on_bording_screens/page_view/widget/pageView_secand_txt.dart';
import '../../../models/p_models.dart';




class MPageView extends StatefulWidget {
  const MPageView({Key? key}) : super(key: key);

  @override
  State<MPageView> createState() => _MPageViewState();
}

class _MPageViewState extends State<MPageView> {
  late PageController _controller;
  final List<PageModel> _data = PageModel.data;

  int _index = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController();
    _controller.addListener(() {
      setState(() {
        _index = _controller.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _controller = PageController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _controller,
                itemCount: _data.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                       SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                      SvgPicture.asset(
                        _data[index].imagePath!,
                      ),
                    ],
                  );
                }),
          ),
          PageViewIndecator(index: _index),
          const SizedBox(height: 38),
          PageViewHederTxt(data: _data, index: _index),
          PageViewSecandTxt(data: _data, index: _index),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: PageViewButton(index: _index, controller: _controller),
          ),
          const SizedBox(height: 94),
        ],
      ),
    );
  }
}








