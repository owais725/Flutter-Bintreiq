import 'package:flutter/material.dart';
import '../util/constant.dart';
import 'custom_suffix_icon.dart';

class CustomEmailTextFormField extends StatefulWidget {
  const CustomEmailTextFormField({Key? key}) : super(key: key);

  @override
  State<CustomEmailTextFormField> createState() =>
      _CustomEmailTextFormFieldState();
}

class _CustomEmailTextFormFieldState extends State<CustomEmailTextFormField> {
  @override
  Widget build(BuildContext context) {
    final List<String> errors = [];

    // ignore: unused_local_variable
    String? email;
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
          )),
    );
  }
}

class CustomPaswordTextFormField extends StatefulWidget {
  const CustomPaswordTextFormField({Key? key}) : super(key: key);

  @override
  State<CustomPaswordTextFormField> createState() =>
      _CustomPaswordTextFormFieldState();
}

class _CustomPaswordTextFormFieldState
    extends State<CustomPaswordTextFormField> {
  @override
  Widget build(BuildContext context) {
    final List<String> errors = [];
    // ignore: unused_local_variable
    String? password;
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
