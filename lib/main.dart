// ignore_for_file: deprecated_member_use

import 'package:bintreiq/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'B I E N T R I Q',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: RouteClass.getSplashRoute(),
      getPages: RouteClass.routes,
    );
  }
}
