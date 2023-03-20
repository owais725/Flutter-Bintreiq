// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'profile_field_card.dart';
import 'profile_pic.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ProfilePic(),
        SizedBox(height: 20),
        ProfileCard(iconPath: "assets/icons/User Icon.svg", text: "My Account"),
        ProfileCard(iconPath: "assets/icons/Bell.svg", text: "Notifications"),
        ProfileCard(iconPath: "assets/icons/Settings.svg", text: "Settings"),
        ProfileCard(
            iconPath: "assets/icons/Question mark.svg", text: "Help Center"),
        ProfileCard(iconPath: "assets/icons/Log out.svg", text: "Log Out"),
      ],
    );
  }
}
