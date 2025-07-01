import 'package:flutter/material.dart';
import 'package:expoloredz_flutter/component/app_drawer.dart';

class OpportunitiesScreen extends StatelessWidget {
  const OpportunitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Opportunities')),
      drawer: const AppDrawer(selectedItem: 'opportunities'),
      body: const Center(child: Text('Opportunities Screen Content')),
    );
  }
}
