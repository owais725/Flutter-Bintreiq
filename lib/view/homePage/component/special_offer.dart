import 'package:flutter/material.dart';

import '../../../util/size_config.dart';
import 'selection_tile.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectionTile(text: 'Special Offer', press: () {}),
        SizedBox(height: getScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                category: "Smartphone",
                image: "assets/images/Image Banner 2.png",
                numOfBrands: 7,
                press: () {},
              ),
              SpecialOfferCard(
                category: "Fashion",
                image: "assets/images/Image Banner 3.png",
                numOfBrands: 24,
                press: () {},
              ),
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

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getScreenWidth(20)),
      child: SizedBox(
        width: getScreenWidth(211),
        height: getScreenHeight(91),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      const Color(0xFF343434).withOpacity(0.6),
                      const Color(0xFF343434).withOpacity(0.2),
                    ])),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getScreenWidth(15),
                    vertical: getScreenHeight(10)),
                child: Text.rich(TextSpan(
                    style: const TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                              fontSize: getScreenWidth(18),
                              fontWeight: FontWeight.bold)),
                      TextSpan(text: "$numOfBrands Brands")
                    ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
