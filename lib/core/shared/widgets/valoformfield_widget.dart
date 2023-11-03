import 'package:flutter/material.dart';

import 'package:valotod_app/core/shared/style/palette.dart';
import 'package:valotod_app/core/shared/style/typograph.dart';

class ValoFormWidget extends StatelessWidget {
  const ValoFormWidget({
    required this.label,
    required this.hintText,
    required this.controller,
    this.obscuredText,
    super.key,
    this.suffixIcon,
    this.prefixIcon,
  });

  final bool? obscuredText;
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
      obscureText: obscuredText ?? false,
      style: ValoTypoGraph.label1.black.copyWith(color: Palette.white500),
      decoration: InputDecoration(
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Palette.white500,
          ),
        ),
        hintText: hintText,
        hintStyle: ValoTypoGraph.body1.medium.copyWith(color: Palette.white500),
        labelText: label,
        prefixIcon: Icon(
          prefixIcon,
          color: Palette.white500,
        ),
        suffixIcon: suffixIcon,
        labelStyle:
            ValoTypoGraph.body1.medium.copyWith(color: Palette.white500),
        floatingLabelStyle:
            ValoTypoGraph.body1.medium.copyWith(color: Palette.white500),
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
