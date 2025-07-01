import 'package:flutter/material.dart';
import 'package:expoloredz_flutter/component/app_drawer.dart';
import 'package:expoloredz_flutter/component/app_background.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      drawer: const AppDrawer(selectedItem: 'settings'),
      body: AppBackground(
        child: const Center(child: Text('Coming soon!')),
      ),
    );
  }
}
