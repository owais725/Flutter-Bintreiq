import 'package:bintreiq/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../util/constant.dart';
import '../../../util/size_config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              width: SizeConfig.screenWidth * 0.6,
              decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15)),
              child: TextField(
                onChanged: (value) {
                  //search value
                },
                decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: 'Search Product',
                    prefixIcon: const Icon(Icons.search),
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: getScreenWidth(20),
                        vertical: getScreenHeight(9))),
              )),
          Row(
            children: [
              IconBtnWithNumber(
                  svgSrc: "assets/icons/Bell.svg", numOfItems: 2, press: () {}),
              SizedBox(width: getScreenWidth(5)),
              IconBtnWithNumber(
                  svgSrc: "assets/icons/Cart Icon.svg",
                  press: () {
                    Get.toNamed(RouteClass.getCartScreenRoute());
                  }),
            ],
          )
        ],
      ),
    );
  }
}

class IconBtnWithNumber extends StatelessWidget {
  const IconBtnWithNumber({
    Key? key,
    required this.svgSrc,
    this.numOfItems = 0,
    required this.press,
  }) : super(key: key);
  final String svgSrc;
  final int numOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        //overflow: OverFlow.visible,
        children: [
          Container(
            padding: EdgeInsets.all(getScreenWidth(12)),
            height: getScreenWidth(46),
            width: getScreenWidth(46),
            decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.2),
                shape: BoxShape.circle),
            child: SvgPicture.asset(svgSrc),
          ),
          if (numOfItems != 0)
            Positioned(
                top: -2,
                right: 0,
                child: Container(
                    height: getScreenWidth(16),
                    width: getScreenWidth(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFF4848),
                      shape: BoxShape.circle,
                      border: Border.all(width: 1.5, color: Colors.white),
                    ),
                    child: Center(
                      child: Text(
                        "$numOfItems",
                        style: TextStyle(
                            fontSize: getScreenWidth(10),
                            color: Colors.white,
                            height: 1,
                            fontWeight: FontWeight.w600),
                      ),
                    )))
        ],
      ),
    );
  }
}
