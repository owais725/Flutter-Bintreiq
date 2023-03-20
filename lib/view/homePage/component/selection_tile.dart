import 'package:flutter/material.dart';

import '../../../util/size_config.dart';

class SelectionTile extends StatelessWidget {
  const SelectionTile({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,
              style:
                  TextStyle(fontSize: getScreenWidth(20), color: Colors.black)),
          GestureDetector(onTap: press, child: const Text('See More'))
        ],
      ),
    );
  }
}
