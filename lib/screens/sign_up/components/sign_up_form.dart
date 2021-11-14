import 'package:flutter/material.dart';
import 'package:furniture_app/components/custom_surfix_icon.dart';
import 'package:furniture_app/components/default_button.dart';
import 'package:furniture_app/components/form_error.dart';
import 'package:furniture_app/screens/complete_profile/complete_profile_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  String confirm_password;
  final List<String> errors = [];

  void addError({String error}) {
    if (!error.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (!error.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildConfPasswordFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(50)),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState.validate()) {
                Navigator.pushNamed(context, CompleteProfileScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildConfPasswordFormField() {
    FocusNode myFocusNode = new FocusNode();
    return TextFormField(
      focusNode: myFocusNode,
      obscureText: true,
      onSaved: (newValue) => confirm_password = newValue,
      onChanged: (value) {
        if (password == confirm_password) {
          removeError(error: kMatchPassError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          return "";
        } else if (password != value) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(25.0),
        ),
        labelStyle: TextStyle(
            color: myFocusNode.hasFocus ? Colors.white : Colors.white),
        labelText: "Confirm Password",
        hintText: "Re-enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/images/icons/Lock.svg",
        ),
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
        password = value;
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
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(25.0),
        ),
        labelStyle: TextStyle(
            color: myFocusNode.hasFocus ? Colors.white : Colors.white),
        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/images/icons/Lock.svg",
        ),
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
        if (value.isEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else {
          if (!emailValidatorRegExp.hasMatch(value)) {
            addError(error: kInvalidEmailError);
            return "";
          }
        }
        return null;
      },
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(25.0),
        ),
        labelStyle: TextStyle(
            color: myFocusNode.hasFocus ? Colors.white : Colors.white),
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/images/icons/Mail.svg"),
      ),
    );
  }
}
