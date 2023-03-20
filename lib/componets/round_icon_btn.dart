// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../util/size_config.dart';

class RoundIconBtn extends StatelessWidget {
  const RoundIconBtn({
    Key? key,
    required this.iconData,
    required this.press,
  }) : super(key: key);
  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: getScreenWidth(40),
        width: getScreenWidth(40),
        child: FlatButton(
          color: Colors.white,
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: press,
          child: Icon(iconData),
        ));
  }
}
