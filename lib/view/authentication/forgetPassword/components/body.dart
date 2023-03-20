// ignore_for_file: deprecated_member_use

import 'package:bintreiq/componets/double_text_header.dart';
import 'package:bintreiq/componets/form_error.dart';
import 'package:bintreiq/componets/no_account_text.dart';
import 'package:bintreiq/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../componets/custom_suffix_icon.dart';
import '../../../../util/constant.dart';
import '../../../../util/size_config.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getScreenHeight(40)),
          child: Column(children: [
            SizedBox(height: SizeConfig.screenHeight * 0.05),
            const TextHeader(
                boldText: "Forget Password",
                otherText:
                    "Please Enter your Email and we will send \nyou a link to return to your account"),
            SizedBox(height: SizeConfig.screenHeight * 0.1),
            const ForgetPassForm()
          ]),
        ),
      ),
    );
  }
}

class ForgetPassForm extends StatefulWidget {
  const ForgetPassForm({Key? key}) : super(key: key);

  @override
  State<ForgetPassForm> createState() => _ForgetPassFormState();
}

class _ForgetPassFormState extends State<ForgetPassForm> {
  final _formkey = GlobalKey<FormState>();
  List<String> errors = [];
  String? email;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formkey,
        child: Column(
          children: [
            TextFormField(
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
                  //  return null;
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
                    ))),
            SizedBox(height: getScreenHeight(30)),
            FormError(errors: errors),
            SizedBox(height: SizeConfig.screenHeight * 0.1),
            SizedBox(
              width: double.infinity,
              height: getScreenHeight(62),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: kPrimaryColor,
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    Get.toNamed(RouteClass.getOtpRoute());
                  }
                },
                child: Text(
                  "Continue",
                  style: TextStyle(
                      color: Colors.white, fontSize: getScreenWidth(22)),
                ),
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.1),
            const NoAccountText()
          ],
        ));
  }
}
