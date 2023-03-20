import 'package:flutter/material.dart';

import '../../../models/cart.dart';
import '../../../util/constant.dart';
import '../../../util/size_config.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key,
    required this.cart,
  }) : super(key: key);
  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: const Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(15)),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(width: getScreenWidth(20)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(cart.product.title,
                style: const TextStyle(color: Colors.black, fontSize: 16)),
            const SizedBox(height: 20),
            Text.rich(TextSpan(
                text: "\$${cart.product.price}",
                style: const TextStyle(
                    fontWeight: FontWeight.w600, color: kPrimaryColor),
                children: [
                  TextSpan(
                      text: "  x${cart.numOfItems}",
                      style: const TextStyle(color: kTextColor))
                ]))
          ],
        )
      ],
    );
  }
}
