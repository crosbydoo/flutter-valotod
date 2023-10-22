// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';

class ValoFormWidget extends StatelessWidget {
  const ValoFormWidget({
    required this.obscuredText,
    required this.label,
    required this.hintText,
    required this.controller,
    super.key,
    this.suffixIcon,
    this.prefixIcon,
  });

  final bool obscuredText;
  final String label;
  final String hintText;
  final IconButton? suffixIcon;
  final IconData? prefixIcon;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please fill the textfield';
        }
        return null;
      },
      controller: controller,
      obscureText: obscuredText,
      style: ValoGraph.label1.black.copyWith(color: Palette.white500),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: ValoGraph.body1.medium.copyWith(color: Palette.white500),
        labelText: label,
        prefixIcon: Icon(
          prefixIcon,
          color: Palette.white500,
        ),
        suffixIcon: suffixIcon,
        labelStyle: ValoGraph.body1.medium.copyWith(color: Palette.white500),
        floatingLabelStyle:
            ValoGraph.body1.medium.copyWith(color: Palette.white500),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Palette.white500,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Palette.white500,
          ),
        ),
      ),
    );
  }
}
