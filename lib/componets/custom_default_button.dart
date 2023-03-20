// ignore_for_file: deprecated_member_use

import 'package:bintreiq/util/size_config.dart';
import 'package:flutter/material.dart';

import '../util/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getScreenHeight(62),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: kPrimaryColor,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: getScreenWidth(22)),
        ),
      ),
    );
  }
}
