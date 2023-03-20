import 'package:flutter/material.dart';

import '../../../util/size_config.dart';

class TopRoundedContainer extends StatelessWidget {
  const TopRoundedContainer({
    Key? key,
    required this.color,
    required this.child,
  }) : super(key: key);

  final Color color;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: getScreenWidth(15)),
      width: double.infinity,
      // height: SizeConfig.screenHeight * 0.35,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          color: color),
      child: child,
    );
  }
}
