import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/theme/palette.dart';

class AuthField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const AuthField({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Palette.blueColor, width: 3),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: Palette.greyColor,
            ),
          ),
          contentPadding: const EdgeInsets.all(22),
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 16)),
    );
  }
}
