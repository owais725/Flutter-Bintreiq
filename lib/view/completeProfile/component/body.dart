import 'package:bintreiq/componets/double_text_header.dart';
import 'package:bintreiq/util/size_config.dart';
import 'package:flutter/cupertino.dart';

import 'complete_profile_form.dart';

class CompleteProfileBody extends StatelessWidget {
  const CompleteProfileBody({Key? key}) : super(key: key);

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
                            boldText: "Complete Profile",
                            otherText:
                                "Complete you profile or continue with \n Social Media"),
                        SizedBox(height: SizeConfig.screenHeight * 0.02),
                        const CompleteProfileForm(),
                        SizedBox(height: getScreenHeight(20)),
                        const Text(
                          'By continuing you confirm that you are \nagree with our Terms and Condition',
                          textAlign: TextAlign.center,
                        )
                      ],
                    )))));
  }
}
