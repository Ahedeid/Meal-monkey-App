import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meal_monkey_mobile_project/shared/cust_appbar_other.dart';
import 'package:meal_monkey_mobile_project/util/constant.dart';

class ChangeAddressScreen extends StatelessWidget {
  const ChangeAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarOther(txt: 'Change Address'),
      body: Stack(
        children: [
          const SizedBox(height: 25),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  elevation: 5,
                  barrierColor: Colors.transparent,
                  context: context,
                  builder: (context) {
                    return SizedBox(
                      height: 170,
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          const SearchBar(),
                          const SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: ListTile(
                              leading:
                                  SvgPicture.asset('assets/icons/star.svg'),
                              title: const Text(
                                'Choose a saved place',
                                style: TextStyle(fontSize: sizeText),
                              ),
                              trailing: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.arrow_forward_ios),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  });
            },
            child: SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/images/map.png',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
