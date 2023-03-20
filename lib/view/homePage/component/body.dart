import 'package:bintreiq/util/size_config.dart';
import 'package:flutter/material.dart';
import 'category.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_product.dart';
import 'special_offer.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: getScreenWidth(15)),
          const HomeHeader(),
          SizedBox(height: getScreenWidth(25)),
          const DiscountContainer(),
          SizedBox(height: getScreenWidth(20)),
          const Categories(),
          SizedBox(height: getScreenWidth(25)),
          const SpecialOffers(),
          SizedBox(height: getScreenWidth(25)),
          const PopularProduct(),
          SizedBox(height: getScreenWidth(15)),
        ],
      ),
    ));
  }
}
