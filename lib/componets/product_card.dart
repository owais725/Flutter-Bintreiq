import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/products_model.dart';
import '../util/constant.dart';
import '../util/size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 140,
    this.aspectRatio = 1.02,
    required this.product,
    required this.press,
  }) : super(key: key);
  final double width, aspectRatio;
  final Product product;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getScreenWidth(width),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: aspectRatio,
                child: Container(
                    padding: EdgeInsets.all(getScreenWidth(20)),
                    decoration: BoxDecoration(
                        color: kSecondaryColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(15)),
                    child: Image.asset(product.images[0])),
              ),
              Text(product.title,
                  style: const TextStyle(color: Colors.black), maxLines: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${product.price}",
                    style: TextStyle(
                        fontSize: getScreenWidth(18),
                        fontWeight: FontWeight.w600,
                        color: kPrimaryColor),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(getScreenWidth(8)),
                      width: getScreenWidth(28),
                      height: getScreenHeight(28),
                      decoration: BoxDecoration(
                          color: product.isFavourite
                              ? kPrimaryColor.withOpacity(0.2)
                              : kSecondaryColor.withOpacity(0.1),
                          shape: BoxShape.circle),
                      child: SvgPicture.asset("assets/icons/Heart Icon_2.svg",
                          color: product.isFavourite
                              ? const Color(0xFFFF4848)
                              : const Color(0xFFD8DEE4)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
