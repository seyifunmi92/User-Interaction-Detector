import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  String hintText;
  bool? isObscure;
  TextEditingController controller;
  TextFieldCustom(
      {super.key,
      required this.hintText,
      required this.controller,
      this.isObscure});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isObscure ?? true,
      decoration: InputDecoration(
        hintText: hintText,
      ),
    );
  }
}
