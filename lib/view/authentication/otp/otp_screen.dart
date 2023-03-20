import 'package:bintreiq/view/authentication/otp/component/body.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "OTP Verification",
          style: TextStyle(color: Color(0XFF8B8B8B), fontSize: 22),
        ),
      ),
      body: const OtpBody(),
    );
  }
}
