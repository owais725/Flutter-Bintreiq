// ignore_for_file: deprecated_member_use

import 'package:bintreiq/componets/double_text_header.dart';
import 'package:bintreiq/routes/routes.dart';
import 'package:bintreiq/util/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../util/constant.dart';

class OtpBody extends StatelessWidget {
  const OtpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getScreenHeight(30)),
          child: Column(
            children: [
              const TextHeader(
                  boldText: "OTP Verification",
                  otherText: "We Sent a code to +92341 **** 725"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("This code will Expire in "),
                  TweenAnimationBuilder(
                    tween: Tween(begin: 30.0, end: 0),
                    duration: const Duration(seconds: 30),
                    builder: (_, dynamic value, child) => Text(
                      " 00:${value.toInt()}",
                      style: const TextStyle(color: kPrimaryColor),
                    ),
                    onEnd: () {},
                  )
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.15),
              const OtpCodeContainer(),
              SizedBox(height: getScreenHeight(15)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: getScreenWidth(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                        onTap: () {}, child: const Text('Resend OTP Code'))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OtpCodeContainer extends StatefulWidget {
  const OtpCodeContainer({Key? key}) : super(key: key);

  @override
  State<OtpCodeContainer> createState() => _OtpCodeContainerState();
}

class _OtpCodeContainerState extends State<OtpCodeContainer> {
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
  }

  void nextField({required String value, FocusNode? focusNode}) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width: getScreenWidth(60),
                  child: TextFormField(
                    autofocus: true,
                    obscureText: true,
                    style: const TextStyle(fontSize: 24),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: getScreenWidth(15)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: kTextColor)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: kPrimaryColor)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: kPrimaryColor)),
                    ),
                    onChanged: (value) {
                      nextField(value: value, focusNode: pin2FocusNode);
                    },
                  )),
              SizedBox(
                  width: getScreenWidth(60),
                  child: TextFormField(
                    focusNode: pin2FocusNode,
                    autofocus: true,
                    obscureText: true,
                    style: const TextStyle(fontSize: 24),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: getScreenWidth(15)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: kTextColor)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: kPrimaryColor)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: kPrimaryColor)),
                    ),
                    onChanged: (value) {
                      nextField(value: value, focusNode: pin3FocusNode);
                    },
                  )),
              SizedBox(
                  width: getScreenWidth(60),
                  child: TextFormField(
                    focusNode: pin3FocusNode,
                    autofocus: true,
                    obscureText: true,
                    style: const TextStyle(fontSize: 24),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: getScreenWidth(15)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: kTextColor)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: kPrimaryColor)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: kPrimaryColor)),
                    ),
                    onChanged: (value) {
                      nextField(value: value, focusNode: pin4FocusNode);
                    },
                  )),
              SizedBox(
                  width: getScreenWidth(60),
                  child: TextFormField(
                    focusNode: pin4FocusNode,
                    autofocus: true,
                    obscureText: true,
                    style: const TextStyle(fontSize: 24),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: getScreenWidth(15)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: kTextColor)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: kPrimaryColor)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: kPrimaryColor)),
                    ),
                    onChanged: (value) {
                      if (value.length == 1) {
                        pin4FocusNode!.unfocus();
                        // Then you need to check is the code is correct or not
                      }
                    },
                  )),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.15),
          SizedBox(
            width: double.infinity,
            height: getScreenHeight(62),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: kPrimaryColor,
              onPressed: () {
                // if (_formkey.currentState!.validate()) {
                //   Get.toNamed(RouteClass.getOtpRoute());
                // }
                Get.toNamed(RouteClass.homeScreen);
              },
              child: Text(
                "Continue",
                style: TextStyle(
                    color: Colors.white, fontSize: getScreenWidth(22)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
