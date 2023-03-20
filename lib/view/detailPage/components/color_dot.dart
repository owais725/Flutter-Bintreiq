import 'package:flutter/material.dart';

import '../../../componets/round_icon_btn.dart';
import '../../../models/products_model.dart';
import '../../../util/constant.dart';
import '../../../util/size_config.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: getScreenWidth(10), horizontal: getScreenWidth(20)),
      child: Row(children: [
        ...List.generate(
            product.colors.length,
            (index) => ColorDot(
                  color: product.colors[index],
                  isSelected: selectedColor == index,
                )),
        const Spacer(),
        RoundIconBtn(iconData: Icons.remove, press: () {}),
        SizedBox(width: getScreenWidth(15)),
        RoundIconBtn(iconData: Icons.add, press: () {})
      ]),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 2),
      padding: const EdgeInsets.all(6),
      height: getScreenWidth(40),
      width: getScreenWidth(40),
      decoration: BoxDecoration(
        border:
            Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
        shape: BoxShape.circle,
        // color: product.colors[0]
      ),
      child: DecoratedBox(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
    );
  }
}
