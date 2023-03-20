import 'package:bintreiq/util/size_config.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class SplashCreen extends StatelessWidget {
  const SplashCreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(body: Body());
  }
}
