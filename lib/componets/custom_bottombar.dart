import 'package:bintreiq/routes/routes.dart';
import 'package:bintreiq/util/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../enum.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);
  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final Color inActiveColor = const Color(0xFFB6B6B6);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, -15),
                blurRadius: 15,
                color: const Color(0xFFDADADA).withOpacity(0.15))
          ]),
      child: SafeArea(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(
              onPressed: () {
                Get.toNamed(RouteClass.getHomeRoute());
              },
              icon: SvgPicture.asset("assets/icons/Shop Icon.svg",
                  color: MenuState.home == selectedMenu
                      ? kPrimaryColor
                      : inActiveColor)),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/Heart Icon.svg",
                  color: MenuState.favourite == selectedMenu
                      ? kPrimaryColor
                      : inActiveColor)),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg",
                  color: MenuState.message == selectedMenu
                      ? kPrimaryColor
                      : inActiveColor)),
          IconButton(
              onPressed: () {
                Get.toNamed(RouteClass.getProfileScreenRoute());
              },
              icon: SvgPicture.asset("assets/icons/User Icon.svg",
                  color: MenuState.profile == selectedMenu
                      ? kPrimaryColor
                      : inActiveColor)),
        ]),
      ),
    );
  }
}
