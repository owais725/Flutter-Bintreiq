import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/routes.dart';
import '../util/constant.dart';
import '../util/size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account?",
            style: TextStyle(fontSize: getScreenWidth(16))),
        GestureDetector(
          onTap: () {
            Get.toNamed(RouteClass.getRegistrationRoute());
          },
          child: Text("Signup",
              style: TextStyle(
                  fontSize: getScreenWidth(16), color: kPrimaryColor)),
        ),
      ],
    );
  }
}
