import 'package:expoloredz_flutter/component/constants.dart';
import 'package:flutter/material.dart';
import 'package:expoloredz_flutter/screens/opportunities_screen.dart';
import 'package:expoloredz_flutter/screens/thoughts_screen.dart';
import 'package:expoloredz_flutter/screens/connections_screen.dart';
import 'package:expoloredz_flutter/screens/profile_screen.dart';
import 'package:expoloredz_flutter/screens/settings_screen.dart';
import 'package:expoloredz_flutter/screens/login_screen.dart';
import 'package:expoloredz_flutter/component/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: const AppDrawer(selectedItem: 'home'),
      body: const Center(child: Text('Welcome to the Home Page!')),
    );
  }
}
