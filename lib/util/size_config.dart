import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SizeConfig {
  static late double screenWidth;
  static late double screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    screenWidth = Get.size.width;
    screenHeight = Get.size.height;
    orientation = MediaQuery.of(context).orientation;
  }
}

// Get the proportionate height as per screen size
double getScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}
