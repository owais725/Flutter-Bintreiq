// ignore_for_file: deprecated_member_use

import 'package:bintreiq/componets/double_text_header.dart';
import 'package:bintreiq/util/size_config.dart';
import 'package:flutter/material.dart';
import '../../../../componets/no_account_text.dart';
import '../../../../componets/social_card.dart';
import 'login_form.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const TextHeader(
                    boldText: "Welcome Back",
                    otherText:
                        "Sign in with your Email and Password \nor continue with Social Media"),
                SizedBox(height: SizeConfig.screenHeight * 0.05),
                const LoginForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: 'assets/icons/google-icon.svg',
                      press: () {},
                    ),
                    SocialCard(
                      icon: 'assets/icons/facebook-2.svg',
                      press: () {},
                    ),
                    SocialCard(
                      icon: 'assets/icons/twitter.svg',
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getScreenHeight(15)),
                const NoAccountText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
