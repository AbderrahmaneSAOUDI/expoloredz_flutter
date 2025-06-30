import 'package:flutter/material.dart';
import 'package:expoloredz_flutter/component/constants.dart';

class LogoImage extends StatelessWidget {
  final double height;
  final EdgeInsetsGeometry? padding;

  const LogoImage({
    super.key,
    this.height = 120,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Image.asset(
        AppConstants.logoAsset,
        height: height,
      ),
    );
  }
}