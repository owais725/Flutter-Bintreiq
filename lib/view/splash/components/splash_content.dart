import 'package:flutter/material.dart';

import '../../../util/constant.dart';
import '../../../util/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.imagePath,
  }) : super(key: key);
  final String text, imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35),
      child: Column(
        children: [
          Text("BINTREIQ",
              style: TextStyle(
                fontSize: getScreenWidth(36),
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(height: 5),
          Text(
            text,
            style: TextStyle(
              fontSize: getScreenWidth(18),
              color: Colors.black38,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(
            flex: 2,
          ),
          Image.asset(
            imagePath,
            height: getScreenHeight(265),
            width: getScreenWidth(235),
          )
        ],
      ),
    );
  }
}
