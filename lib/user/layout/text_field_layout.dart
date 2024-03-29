import 'package:flutter/material.dart';
import 'package:messenger_app/const/color.dart';

TextFormField textFormField({
  required String hintText,
  TextEditingController? controller,
  required bool sign,
  FocusNode? focusNode,
  String? Function(String?)? validator,
  void Function(String)? onChanged,
  int? maxLength,
  bool? obscureText,
  required TextInputType keyboardType,
  required Key key,
}) {
  return TextFormField(
    key: key,
    autovalidateMode: AutovalidateMode.onUserInteraction,
    controller: controller,
    onChanged: onChanged,
    focusNode: focusNode,
    validator: validator,
    maxLength: maxLength,
    keyboardType: keyboardType,
    obscureText: obscureText ?? false,
    decoration: InputDecoration(
      filled: true,
      fillColor: WHITE_COLOR,
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: WHITE_COLOR),
        borderRadius: BorderRadius.circular(40.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: sign ? SIGN_BORDER : LOGIN_BG),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            50,
          ),
        ),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: 2.0),
        borderRadius: BorderRadius.all(
          Radius.circular(
            50,
          ),
        ),
      ),
      hintText: hintText,
      contentPadding:
          const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
    ),
  );
}
