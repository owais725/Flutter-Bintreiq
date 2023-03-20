import 'package:bintreiq/componets/custom_bottombar.dart';
import 'package:bintreiq/enum.dart';
import 'package:bintreiq/view/homePage/component/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBody(),
      bottomNavigationBar: CustomBottomBar(selectedMenu: MenuState.home),
    );
  }
}
