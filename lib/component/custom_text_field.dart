import 'package:flutter/material.dart';
import 'package:expoloredz_flutter/component/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool obscureText;
  final String? errorText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final void Function(String)? onChanged;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.icon,
    this.obscureText = false,
    this.errorText,
    this.validator,
    this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      style: AppConstants.bodyTextStyle,
      onChanged: onChanged,
      decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: Icon(
              icon,
              color: errorText != null ? AppConstants.errorColor : null,
            ),
        filled: true,
        fillColor: AppConstants.inputBackground,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(color: errorText != null ? AppConstants.errorColor : Colors.transparent, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(color: errorText != null ? AppConstants.errorColor : Colors.transparent, width: 2.0),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(color: AppConstants.errorColor, width: 2.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(color: AppConstants.errorColor, width: 2.0),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
        errorText: errorText,
        errorStyle: TextStyle(color: AppConstants.errorColor),
      ),
      validator: validator,
    );
  }
}