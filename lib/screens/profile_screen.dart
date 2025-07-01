import 'package:flutter/material.dart';
import 'package:expoloredz_flutter/component/app_drawer.dart';
import 'package:expoloredz_flutter/component/app_background.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      drawer: const AppDrawer(selectedItem: 'profile'),
      body: AppBackground(
        child: const Center(child: Text('Coming soon!')),
      ),
    );
  }
}
