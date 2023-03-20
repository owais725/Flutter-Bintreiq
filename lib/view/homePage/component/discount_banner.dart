import 'package:flutter/material.dart';

import '../../../util/size_config.dart';

class DiscountContainer extends StatelessWidget {
  const DiscountContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: getScreenWidth(20)),
          padding: EdgeInsets.symmetric(
              horizontal: getScreenWidth(20), vertical: getScreenWidth(15)),
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xFF4A3298),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Text.rich(TextSpan(
              text: 'A Summer Surprise\n',
              style: TextStyle(color: Colors.white),
              children: [
                TextSpan(
                    text: "Cashback 20%",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
              ])),
        ),
        Positioned(
          right: 0,
          top: -3,
          bottom: 0,
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: getScreenWidth(20)),
              padding: EdgeInsets.symmetric(
                  horizontal: getScreenWidth(20), vertical: getScreenWidth(15)),
              height: getScreenHeight(70),
              width: getScreenWidth(120),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(45),
                    bottomLeft: Radius.circular(45),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color(0xFF89CFF0).withOpacity(0.6),
                      const Color(0xFF89CFF0).withOpacity(0.1)
                    ]),
              )
              // color: Colors.white.withOpacity(0.2))
              //color: const Color(0xFF89CFF0).withOpacity(0.5)),
              ),
        ),
      ],
    );
  }
}
