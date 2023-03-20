import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../util/size_config.dart';

class TextIcon extends StatelessWidget {
  const TextIcon({
    Key? key,
    required this.rating,
  }) : super(key: key);
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: getScreenWidth(14), vertical: getScreenWidth(7)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.white,
      ),
      child: Row(children: [
        Text(
          rating.toString(),
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        const SizedBox(width: 5),
        SvgPicture.asset("assets/icons/Star Icon.svg")
      ]),
    );
  }
}
