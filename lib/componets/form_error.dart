import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../util/size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
            errors.length, (index) => formErrorText(error: errors[index])));
  }

  Row formErrorText({required String error}) {
    return Row(children: [
      SvgPicture.asset(
        "assets/icons/Error.svg",
        height: getScreenHeight(14),
        width: getScreenHeight(14),
      ),
      SizedBox(
        width: getScreenWidth(5),
      ),
      Text(error)
    ]);
  }
}
