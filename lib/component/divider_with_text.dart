import 'package:flutter/material.dart';
import 'package:expoloredz_flutter/component/constants.dart';

class DividerWithText extends StatelessWidget {
  final String text;

  const DividerWithText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(color: Colors.grey),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Text(
            text,
            style: AppConstants.bodyTextStyle
                .copyWith(color: Colors.grey),
          ),
        ),
        const Expanded(
          child: Divider(color: Colors.grey),
        ),
      ],
    );
  }
}
