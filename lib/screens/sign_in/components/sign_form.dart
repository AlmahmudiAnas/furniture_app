import 'package:flutter/material.dart';
import 'package:furniture_app/components/custom_surfix_icon.dart';
import 'package:furniture_app/components/default_button.dart';
import 'package:furniture_app/components/form_error.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/screens/forgot_password/forgor_password_screen.dart';
import 'package:furniture_app/screens/login_success/login_success_screen.dart';

import '../../../size_config.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _fromKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remeber = false;
  final List<String> errors = [];

  String get kInvalidEmailError => null;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _fromKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                value: remeber,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remeber = value;
                  });
                },
              ),
              Text(
                "Remeber me",
                style: TextStyle(color: Colors.white),
              ),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context, ForgotPasswordScreen.routename),
                child: Text(
                  "Forget password",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_fromKey.currentState.validate()) {
                _fromKey.currentState.save();
                // varify first then if all went well then we go to login success
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    FocusNode myFocusNode = new FocusNode();
    return TextFormField(
      focusNode: myFocusNode,
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullErro)) {
          setState(() {
            errors.remove(kPassNullErro);
          });
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPassNullErro)) {
          setState(() {
            errors.add(kPassNullErro);
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
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(25),
        ),
        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/images/icons/Lock.svg",
        ),
        labelStyle: TextStyle(
            color: myFocusNode.hasFocus ? Colors.white : Colors.white),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    FocusNode myFocusNode = new FocusNode();
    return TextFormField(
      focusNode: myFocusNode,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kEmailNullError)) {
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
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(25),
        ),
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/images/icons/Mail.svg",
        ),
        labelStyle: TextStyle(
            color: myFocusNode.hasFocus ? Colors.white : Colors.white),
      ),
    );
  }
}
