import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../util/size_config.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key? key,
    required this.icon,
    required this.press,
  }) : super(key: key);
  final String icon;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press(),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: getScreenHeight(10)),
        padding: EdgeInsets.all(getScreenWidth(8)),
        height: getScreenHeight(40),
        width: getScreenWidth(40),
        decoration: const BoxDecoration(
            color: Color(0xFFF5F6F9), shape: BoxShape.circle),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
