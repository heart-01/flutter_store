import 'package:flutter/material.dart';

Widget textInput({
  bool autofocus = false,
  bool obscureText = false,
  TextInputType textInputType = TextInputType.text,
  required String hintText,
  required Icon prefixIcon,
  required TextEditingController inputController,
  required String? Function(String?)? onValidate,
}) {
  return TextFormField(
    controller: inputController,
    keyboardType: textInputType,
    autofocus: autofocus,
    enableSuggestions: false,
    autocorrect: false,
    obscureText: obscureText,
    decoration: InputDecoration(
      hintText: hintText,
      prefixIcon: prefixIcon,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(40),
        borderSide: const BorderSide(width: 0, style: BorderStyle.none),
      ),
      filled: true,
      isDense: true,
      contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      fillColor: Colors.grey[300],
    ),
    validator: onValidate,
  );
}