import 'package:bintreiq/view/authentication/registration/components/registration_form.dart';
import 'package:flutter/material.dart';

import '../../../../componets/double_text_header.dart';
import '../../../../componets/social_card.dart';
import '../../../../util/size_config.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            const TextHeader(
              boldText: "Register Account",
              otherText: "Complete your detail or continue \nwith Social Media",
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.04),
            const RegistrationForm(),
            SizedBox(height: getScreenHeight(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialCard(icon: 'assets/icons/google-icon.svg', press: () {}),
                SocialCard(icon: 'assets/icons/facebook-2.svg', press: () {}),
                SocialCard(icon: 'assets/icons/twitter.svg', press: () {}),
              ],
            ),
            SizedBox(height: getScreenHeight(10)),
            const Text(
                "By clicking Contiue you confirm that you are agree \nwith our Terms and Condition ")
          ]),
        ),
      ),
    ));
  }
}
