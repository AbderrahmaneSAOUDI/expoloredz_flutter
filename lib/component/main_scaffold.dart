import 'package:flutter/material.dart';
import 'package:ExpoloreDZ_Flutter/screens/opportunities_screen.dart';
import 'package:ExpoloreDZ_Flutter/screens/thoughts_screen.dart';
import 'package:ExpoloreDZ_Flutter/screens/connections_screen.dart';
import 'package:ExpoloreDZ_Flutter/screens/profile_screen.dart';
import 'package:ExpoloreDZ_Flutter/screens/settings_screen.dart';
import 'package:ExpoloreDZ_Flutter/screens/login_screen.dart';

class MainScaffold extends StatelessWidget {
  final Widget body;
  final String title;

  const MainScaffold({
    Key? key,
    required this.body,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'ExploreDZ Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.lightbulb_outline,
              ),
              title: const Text(
                'Opportunities',
              ),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const OpportunitiesScreen(),
                  ),
                  (Route<dynamic> route) =>
                      false,
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.chat_bubble_outline,
              ),
              title: const Text('Thoughts'),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const ThoughtsScreen(),
                  ),
                  (Route<dynamic> route) =>
                      false,
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.people_outline,
              ),
              title: const Text('Connections'),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const ConnectionsScreen(),
                  ),
                  (Route<dynamic> route) =>
                      false,
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.person_outline,
              ),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const ProfileScreen(),
                  ),
                  (Route<dynamic> route) =>
                      false,
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.settings_outlined,
              ),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const SettingsScreen(),
                  ),
                  (Route<dynamic> route) =>
                      false,
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
                color: Colors.red,
              ),
              title: const Text(
                'Logout',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const LoginScreen(),
                  ),
                  (Route<dynamic> route) =>
                      false,
                );
              },
            ),
          ],
        ),
      ),
      body: body,
    );
  }
}
