import 'package:flutter/material.dart';
import 'package:expoloredz_flutter/component/app_drawer.dart';

class ConnectionsScreen extends StatelessWidget {
  const ConnectionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Connections')),
      drawer: const AppDrawer(selectedItem: 'connections'),
      body: const Center(child: Text('Connections Screen Content')),
    );
  }
}
