// ignore_for_file: deprecated_member_use

import 'package:bintreiq/routes/routes.dart';
import 'package:bintreiq/util/constant.dart';
import 'package:bintreiq/util/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'splash_content.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to BintreiQ, Let's Shop!",
      "imagePath": "assets/images/splash_1.png",
    },
    {
      "text":
          "We help people connect with store \naround United State of America",
      "imagePath": "assets/images/splash_2.png",
    },
    {
      "text": "We show the easy way to shop. \nJust Stay at home with us",
      "imagePath": "assets/images/splash_3.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  text: splashData[index]["text"].toString(),
                  imagePath: splashData[index]["imagePath"].toString(),
                  // text: "Welcome to Tokoto, Let's Shop!",
                  // imagePath: "assets/images/splash_1.png",
                ),
              )),
          Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: getScreenHeight(55)),
                child: Column(
                  children: [
                    const Spacer(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(splashData.length,
                            (index) => buildDot(index: index))),
                    const Spacer(flex: 3),
                    SizedBox(
                      width: double.infinity,
                      height: getScreenHeight(62),
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: kPrimaryColor,
                        onPressed: () {
                          Get.toNamed(RouteClass.getLoginRoute());
                        },
                        child: Text(
                          "Continue",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: getScreenWidth(22)),
                        ),
                      ),
                    ),
                    // CustomButton(
                    //   text: "Continue",
                    //   press: () {
                    //     Get.toNamed(RouteClass.getLoginRoute());
                    //   },
                    // ),
                    const Spacer(),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      height: getScreenHeight(6),
      width: currentPage == index ? getScreenHeight(20) : getScreenHeight(8),
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : const Color(0XFFD8D8D8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  get kPrimaryColor => null;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getScreenHeight(62),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: kPrimaryColor,
        onPressed: press(),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: getScreenWidth(22)),
        ),
      ),
    );
  }
}
