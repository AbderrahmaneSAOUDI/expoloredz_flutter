import 'package:flutter/material.dart';
import 'package:expoloredz_flutter/component/constants.dart';

class AuthNavigationText extends StatelessWidget {
  final String leadingText;
  final String buttonText;
  final VoidCallback onPressed;

  const AuthNavigationText({
    super.key,
    required this.leadingText,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          leadingText,
          style: AppConstants.bodyTextStyle.copyWith(
            color: Colors.black54,
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: AppConstants.bodyTextStyle.copyWith(
              color: AppConstants.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}