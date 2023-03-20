// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 130),
      child: SizedBox(
          width: 115,
          height: 115,
          child: Stack(
            fit: StackFit.expand,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/Profile Image.png",
                ),
              ),
              Positioned(
                  right: 0,
                  bottom: -2,
                  child: SizedBox(
                    height: 46,
                    width: 46,
                    child: FlatButton(
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(50)),
                        color: const Color(0xFFF5F6F9),
                        onPressed: () {},
                        child:
                            SvgPicture.asset("assets/icons/Camera Icon.svg")),
                  ))
            ],
          )),
    );
  }
}
