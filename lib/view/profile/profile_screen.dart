import 'package:bintreiq/enum.dart';
import 'package:bintreiq/view/profile/component/body.dart';
import 'package:flutter/material.dart';
import '../../componets/custom_bottombar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: const ProfileScreenBody(),
      bottomNavigationBar: const CustomBottomBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
