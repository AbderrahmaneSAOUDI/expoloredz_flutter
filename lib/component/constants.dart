import 'package:flutter/material.dart';

class AppConstants {
  static const String appName = 'Explore DZ';
  static const String logoAsset =
      'assets/logo.webp';
  static const Duration splashDuration =
      Duration(seconds: 3);

  // Colors
  static const Color primaryColor = Color(
    0xFF1597D5,
  );
  static const Color secondaryColor = Color(
    0xFFF7C901,
  );
  static const Color inputBackground = Color(
    0xFFE2F2FA,
  );
  static const Color primaryButtonColor = Color(
    0xFF1597D5,
  );
  static const Color darkBlue = Color(
    0xFF0247AE,
  );
  static const Color errorColor = Color(
    0xFFFC0001,
  );

  // Font Styles (example, adjust as needed)
  static const TextStyle bodyTextStyle =
      TextStyle(
        fontFamily: 'Roboto',
        fontSize: 16.0,
        color: primaryColor,
      );

  static const TextStyle headingTextStyle =
      TextStyle(
        fontFamily: 'Roboto',
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: darkBlue,
      );
}
