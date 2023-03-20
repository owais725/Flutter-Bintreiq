import 'package:flutter/material.dart';
import '../../../componets/custom_default_button.dart';
import '../../../models/products_model.dart';
import '../../../util/size_config.dart';
import 'color_dot.dart';
import 'product_description.dart';
import 'product_image.dart';
import 'top_rounded_container.dart';

class DetailScreenBody extends StatelessWidget {
  final Product product;

  const DetailScreenBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          ProductImage(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescriptionn(product: product, pressOnSeeMore: () {}),
                TopRoundedContainer(
                    color: const Color(0xFFF0F0F0),
                    child: Column(
                      children: [
                        ColorDots(product: product),
                        SizedBox(height: getScreenWidth(20)),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: getScreenWidth(30),
                              vertical: getScreenWidth(10)),
                          child: CustomButton(
                            text: "Add to Cart",
                            press: () {
                              // cartController
                              //     .addToCart(controller.productsList[index]);
                            },
                          ),
                        ),
                        SizedBox(height: getScreenWidth(10)),
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
