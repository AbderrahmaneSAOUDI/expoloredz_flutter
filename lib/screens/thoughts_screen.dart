import 'package:flutter/material.dart';
import 'package:expoloredz_flutter/component/app_drawer.dart';

class ThoughtsScreen extends StatelessWidget {
  const ThoughtsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Thoughts')),
      drawer: const AppDrawer(selectedItem: 'thoughts'),
      body: const Center(child: Text('Thoughts Screen')),
    );
  }
}
