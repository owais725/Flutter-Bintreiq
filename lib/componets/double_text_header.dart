import 'package:flutter/material.dart';

import '../util/size_config.dart';

class TextHeader extends StatelessWidget {
  const TextHeader({Key? key, required this.boldText, required this.otherText})
      : super(key: key);
  final String boldText;
  final String otherText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(boldText,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: getScreenWidth(28))),
        Text(
          otherText,
          style: const TextStyle(),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
