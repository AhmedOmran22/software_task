import 'package:flutter/material.dart';

import '../constans.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hint,
    this.maxLines = 1,
    this.onSaved,
    this.onChanged,
     this.controller,
  });

  final String? hint;
  final int maxLines;
  final Function(String?)? onSaved;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      onSaved: onSaved,
      maxLines: maxLines,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        }
        return null;
      },
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hint,
        border: buildBoreder(),
        enabledBorder: buildBoreder(),
        focusedBorder: buildBoreder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBoreder([Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
