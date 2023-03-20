import 'package:bintreiq/view/authentication/login/components/body.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Sign In",
          style: TextStyle(color: Color(0XFF8B8B8B), fontSize: 22),
        ),
      ),
      body: const Body(),
    );
  }
}
