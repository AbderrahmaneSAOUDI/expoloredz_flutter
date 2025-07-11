import 'package:flutter/material.dart';
import 'package:expoloredz_flutter/component/constants.dart';
import 'package:expoloredz_flutter/component/thought_card.dart';
import 'package:expoloredz_flutter/component/main_scaffold.dart';

class ThoughtsScreen extends StatelessWidget {
  const ThoughtsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      title: 'Thoughts',
      body: Container(
        color: Colors.grey[100],
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          itemCount: AppConstants.thoughtsTemplates.length,
          itemBuilder: (context, index) {
            final data = AppConstants.thoughtsTemplates[index];
            return ThoughtCard(
              data: data,
              onUserTap: () {},
              onLocationTap: () {},
              onLike: () {},
              onOpportunity: () {},
              onMessage: () {},
            );
          },
        ),
      ),
    );
  }
}
