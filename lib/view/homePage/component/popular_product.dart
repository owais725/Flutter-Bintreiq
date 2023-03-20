import 'package:bintreiq/routes/routes.dart';
import 'package:bintreiq/view/detailPage/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../componets/product_card.dart';
import '../../../models/products_model.dart';
import '../../../util/size_config.dart';
import 'selection_tile.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectionTile(text: "Popular Products", press: () {}),
        SizedBox(height: getScreenWidth(15)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(demoProducts.length, (index) {
                if (demoProducts[index].isPopular) {
                  return ProductCard(
                    product: demoProducts[index],
                    press: () {
                      Get.toNamed(RouteClass.getDetailScreenRoute(),
                          arguments: ProductDetailArguments(
                              product: demoProducts[index]));
                    },
                  );
                }
                return const SizedBox.shrink();
              }),
              SizedBox(
                width: getScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}
