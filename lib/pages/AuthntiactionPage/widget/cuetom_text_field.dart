import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final bool isPassword;
  final Widget? suffixIcon; 
  final TextEditingController? controller;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.isPassword = false,
    this.suffixIcon,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword,
        cursorColor: Color(0xFF6F35A5), 
        decoration: InputDecoration(
          hintText: hintText,
          fillColor: Color(0xFFF1E6FF),
          filled: true,
          prefixIcon: Icon(prefixIcon, color: Color(0xFF6F35A5)), 
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(29), 
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}