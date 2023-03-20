import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../util/size_config.dart';
import '../view/detailPage/components/text_icon.dart';
import 'round_icon_btn.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: getScreenWidth(20),
          top: getScreenWidth(20),
          left: getScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RoundIconBtn(
              iconData: Icons.arrow_back_ios_sharp,
              press: () {
                Get.back();
              }),
          const TextIcon(rating: 4.6)
        ],
      ),
    );
  }
}
