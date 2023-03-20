import 'package:flutter/material.dart';

import 'component/body.dart';

class CompleteProfile extends StatelessWidget {
  const CompleteProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(color: Color(0XFF8B8B8B), fontSize: 22),
        ),
      ),
      body: const CompleteProfileBody(),
    );
  }
}
