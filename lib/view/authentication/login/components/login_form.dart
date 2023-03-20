// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../componets/custom_suffix_icon.dart';
import '../../../../componets/form_error.dart';
import '../../../../routes/routes.dart';
import '../../../../util/constant.dart';
import '../../../../util/size_config.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formkey = GlobalKey<FormState>();
  final List<String> errors = [];
  String? email;
  String? password;
  bool? remember = false;
  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error.toString());
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formkey,
        child: Column(
          children: [
            // const CustomEmailTextFormField(),

            // SizedBox(height: getScreenHeight(30)),
            emailFormField(),
            // SizedBox(height: getScreenHeight(30)),

            // const CustomPaswordTextFormField(),
            SizedBox(height: getScreenHeight(30)),

            passwordFormField(),
            SizedBox(height: getScreenHeight(30)),
            FormError(errors: errors),
            SizedBox(height: getScreenHeight(30)),
            Row(children: [
              Checkbox(
                  value: remember,
                  activeColor: kPrimaryColor,
                  onChanged: (value) {
                    setState(() {
                      remember = value;
                    });
                  }),
              const Text("Remember me"),
              const Spacer(),
              GestureDetector(
                  onTap: () {
                    Get.toNamed(RouteClass.getForgetPasswordRoute());
                  },
                  child: const Text("Forget Password"))
            ]),
            SizedBox(height: getScreenHeight(10)),

            //Login Button
            SizedBox(
              width: double.infinity,
              height: getScreenHeight(62),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: kPrimaryColor,
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    _formkey.currentState!.save();
                    // KeyboardUtil.hideKeyboard(context);
                    Get.toNamed(RouteClass.getHomeRoute());
                  }
                },
                child: Text(
                  "Continue",
                  style: TextStyle(
                      color: Colors.white, fontSize: getScreenWidth(22)),
                ),
              ),
            ),
            //CustomButton(text: "Login", press: () {}),
          ],
        ));
  }

  TextFormField emailFormField() {
    return TextFormField(
        keyboardType: TextInputType.emailAddress,
        onSaved: (newValue) => email = newValue,
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(kEmailNullError)) {
            setState(() {
              errors.remove(kEmailNullError);
            });
          } else if (!emailValidatorRegExp.hasMatch(value) &&
              errors.contains(kInvalidEmailError)) {
            setState(() {
              errors.remove(kInvalidEmailError);
            });
          }
        },
        validator: (value) {
          if (value!.isEmpty && !errors.contains(kEmailNullError)) {
            setState(() {
              errors.add(kEmailNullError);
            });
            return "";
          } else if (!emailValidatorRegExp.hasMatch(value) &&
              !errors.contains(kInvalidEmailError)) {
            setState(() {
              errors.add(kInvalidEmailError);
            });
            return "";
          }
          return null;
        },
        decoration: const InputDecoration(
            labelText: "Email",
            hintText: "Enter your Email",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            // ignore: prefer_const_constructors
            suffixIcon: CustomSuffixIcon(
              svgIcon: "assets/icons/Mail.svg",
            )));
  }

  TextFormField passwordFormField() {
    return TextFormField(
        obscureText: true,
        onSaved: (newValue) => password = newValue,
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(kPassNullError)) {
            setState(() {
              errors.remove(kPassNullError);
            });
          } else if (value.length >= 8 && errors.contains(kShortPassError)) {
            setState(() {
              errors.remove(kShortPassError);
            });
          }
          //return null;
        },
        validator: (value) {
          if (value!.isEmpty && !errors.contains(kPassNullError)) {
            setState(() {
              errors.add(kPassNullError);
            });
            return "";
          } else if (value.length < 8 && !errors.contains(kShortPassError)) {
            setState(() {
              errors.add(kShortPassError);
            });
            return "";
          }
          return null;
        },
        decoration: const InputDecoration(
            labelText: "Password",
            hintText: "Enter your Password",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            // ignore: prefer_const_constructors
            suffixIcon: CustomSuffixIcon(
              svgIcon: "assets/icons/Lock.svg",
            )));
  }
}
