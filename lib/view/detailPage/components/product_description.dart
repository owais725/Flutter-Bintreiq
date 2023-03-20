import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/products_model.dart';
import '../../../util/constant.dart';
import '../../../util/size_config.dart';

class ProductDescriptionn extends StatelessWidget {
  const ProductDescriptionn({
    Key? key,
    required this.product,
    required this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getScreenWidth(25), vertical: getScreenWidth(10)),
          child:
              Text(product.title, style: Theme.of(context).textTheme.headline6),
        ),
        Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: EdgeInsets.all(getScreenWidth(15)),
              width: getScreenWidth(64),
              decoration: BoxDecoration(
                  color: product.isFavourite
                      ? const Color(0xFFFFE6E6)
                      : const Color(0xFFF5F6F9),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              child: SvgPicture.asset(
                "assets/icons/Heart Icon_2.svg",
                color: product.isFavourite
                    ? const Color(0xFFFF4848)
                    : const Color(0xFFDBDEE4),
              ),
            )),
        Padding(
          padding: EdgeInsets.only(
              left: getScreenWidth(20), right: getScreenWidth(64)),
          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getScreenWidth(20),
            vertical: getScreenWidth(10),
          ),
          child: GestureDetector(
            onTap: pressOnSeeMore,
            child: Row(children: const [
              Text("See More Detail",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w600,
                  )),
              SizedBox(width: 5),
              Icon(
                Icons.arrow_forward_ios,
                size: 12,
                color: kPrimaryColor,
              )
            ]),
          ),
        )
      ],
    );
  }
}
