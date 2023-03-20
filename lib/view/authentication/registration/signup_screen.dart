import 'package:bintreiq/view/authentication/registration/components/body.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "SignUp",
            style: TextStyle(color: Color(0XFF8B8B8B), fontSize: 22),
          ),
        ),
        body: const SignUpBody());
  }
}
