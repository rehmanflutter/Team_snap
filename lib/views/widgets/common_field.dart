import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonField extends StatelessWidget {
  CommonField({
    super.key,
    required this.controller,
    required this.onChanged,
    required this.validator,
    required this.hintText,
    this.isObscure = false,
  });

  final TextEditingController controller;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final String hintText;
  bool isObscure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscure,
      controller: controller,
      onChanged: onChanged,
      validator: validator,
      style: GoogleFonts.poppins(
          fontSize: 16, fontWeight: FontWeight.w400, ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(
            fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey.shade600),
        contentPadding: const EdgeInsets.only(left: 10, right: 10),
        fillColor: Colors.white10,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
