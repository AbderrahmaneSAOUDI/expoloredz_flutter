import 'package:flutter/material.dart';
import 'package:expoloredz_flutter/component/app_background.dart';
import 'package:expoloredz_flutter/component/app_drawer.dart';

class MainScaffold extends StatelessWidget {
  final Widget body;
  final String title;

  const MainScaffold({super.key, required this.body, required this.title});

  @override
  Widget build(BuildContext context) {
    // Determine selectedItem based on title
    String selectedItem = '';
    switch (title.toLowerCase()) {
      case 'opportunities':
        selectedItem = 'opportunities';
        break;
      case 'thoughts':
        selectedItem = 'thoughts';
        break;
      default:
        selectedItem = '';
    }

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      drawer: AppDrawer(selectedItem: selectedItem),
      body: AppBackground(child: body),
    );
  }
}
