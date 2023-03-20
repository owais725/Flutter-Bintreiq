// ignore_for_file: deprecated_member_use

import 'package:bintreiq/util/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../componets/custom_suffix_icon.dart';
import '../../../componets/form_error.dart';
import '../../../routes/routes.dart';
import '../../../util/constant.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formkey = GlobalKey<FormState>();
  final List<String> errors = [];
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error!);
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
          firstNameFormField(),
          SizedBox(height: getScreenHeight(25)),
          lastNameFormField(),
          SizedBox(height: getScreenHeight(25)),
          phoneNumberFormField(),
          SizedBox(height: getScreenHeight(25)),
          addressFormField(),
          SizedBox(height: getScreenHeight(25)),
          FormError(errors: errors),
          SizedBox(height: getScreenHeight(40)),
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
                  Get.toNamed(RouteClass.getLoginRoute());
                }
              },
              child: Text(
                "Continue",
                style: TextStyle(
                    color: Colors.white, fontSize: getScreenWidth(22)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextFormField firstNameFormField() {
    return TextFormField(
        keyboardType: TextInputType.emailAddress,
        onSaved: (newValue) => firstName = newValue,
        onChanged: (value) {
          if (value.isNotEmpty) {
            errors.remove(kNameNullError);
          }
        },
        validator: (value) {
          if (value!.isEmpty) {
            errors.add(kNameNullError);
            return "";
          }

          return null;
        },
        decoration: const InputDecoration(
            labelText: "FirstName",
            hintText: "Enter your First Name",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            // ignore: prefer_const_constructors
            suffixIcon: CustomSuffixIcon(
              svgIcon: "assets/icons/User.svg",
            )));
  }

  TextFormField lastNameFormField() {
    return TextFormField(
        keyboardType: TextInputType.emailAddress,
        onSaved: (newValue) => lastName = newValue,
        onChanged: (value) {
          if (value.isNotEmpty) {
            errors.remove(kNameNullError);
          }
        },
        validator: (value) {
          if (value!.isEmpty) {
            errors.add(kNameNullError);
            return "";
          }
          return null;
        },
        decoration: const InputDecoration(
            labelText: "LastName",
            hintText: "Enter your Last Name",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            // ignore: prefer_const_constructors
            suffixIcon: CustomSuffixIcon(
              svgIcon: "assets/icons/User.svg",
            )));
  }

  TextFormField phoneNumberFormField() {
    return TextFormField(
        keyboardType: TextInputType.number,
        onSaved: (newValue) => lastName = newValue,
        onChanged: (value) {
          if (value.isNotEmpty) {
            errors.remove(kPhoneNumberNullError);
          }
        },
        validator: (value) {
          if (value!.isEmpty) {
            errors.add(kPhoneNumberNullError);
            return "";
          }
          return null;
        },
        decoration: const InputDecoration(
            labelText: "PhoneNumber",
            hintText: "Enter your Phone Number",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            // ignore: prefer_const_constructors
            suffixIcon: CustomSuffixIcon(
              svgIcon: "assets/icons/Phone.svg",
            )));
  }

  TextFormField addressFormField() {
    return TextFormField(
        onSaved: (newValue) => address = newValue,
        onChanged: (value) {
          if (value.isNotEmpty) {
            errors.remove(kAddressNullError);
          }
        },
        validator: (value) {
          if (value!.isEmpty) {
            errors.add(kAddressNullError);
            return "";
          }
          return null;
        },
        decoration: const InputDecoration(
            labelText: "Address",
            hintText: "Enter your Residential Address",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            // ignore: prefer_const_constructors
            suffixIcon: CustomSuffixIcon(
              svgIcon: "assets/icons/Location point.svg",
            )));
  }
}
