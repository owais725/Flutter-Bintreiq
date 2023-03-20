import 'package:flutter/material.dart';

import 'components/body.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text("Forget Password",
                style: TextStyle(color: Color(0XFF8B8B8B), fontSize: 22))),
        body: const ForgetPasswordBody());
  }
}
