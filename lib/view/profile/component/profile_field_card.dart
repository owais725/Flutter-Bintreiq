import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../util/constant.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
    required this.iconPath,
    required this.text,
  }) : super(key: key);
  final String iconPath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
        decoration: BoxDecoration(
            color: const Color(0xFFF5F6F9),
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(children: [
            SvgPicture.asset(iconPath, color: kPrimaryColor),
            const SizedBox(width: 20),
            Text(text, style: Theme.of(context).textTheme.bodyText2),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: kTextColor,
            )
          ]),
        ),
      ),
    );
  }
}
