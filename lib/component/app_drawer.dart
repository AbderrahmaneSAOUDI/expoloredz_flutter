import 'package:flutter/material.dart';
import 'package:expoloredz_flutter/component/constants.dart';
import 'package:expoloredz_flutter/screens/opportunities_screen.dart';
import 'package:expoloredz_flutter/screens/thoughts_screen.dart';
import 'package:expoloredz_flutter/screens/connections_screen.dart';
import 'package:expoloredz_flutter/screens/profile_screen.dart';
import 'package:expoloredz_flutter/screens/settings_screen.dart';
import 'package:expoloredz_flutter/screens/login_screen.dart';

class AppDrawer extends StatelessWidget {
  final String selectedItem;
  const AppDrawer({Key? key, required this.selectedItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/logo.png', width: 128.0),
                      SizedBox(height: 10),
                      Text(
                        'Welcome to the journey!',
                        style: TextStyle(
                          color: AppConstants.primaryColor,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.lightbulb_outline),
                  title: const Text('Opportunities'),
                  tileColor: selectedItem == 'opportunities'
                      ? AppConstants.inputBackground
                      : null,
                  selected: selectedItem == 'opportunities',
                  selectedTileColor: AppConstants.inputBackground,
                  splashColor: AppConstants.primaryColor,
                  onTap: selectedItem == 'opportunities'
                      ? null
                      : () {
                          Navigator.pop(context);
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OpportunitiesScreen(),
                            ),
                          );
                        },
                ),
                ListTile(
                  leading: const Icon(Icons.chat_bubble_outline),
                  title: const Text('Thoughts'),
                  tileColor: selectedItem == 'thoughts'
                      ? AppConstants.inputBackground
                      : null,
                  selected: selectedItem == 'thoughts',
                  selectedTileColor: AppConstants.inputBackground,
                  splashColor: AppConstants.primaryColor,
                  onTap: selectedItem == 'thoughts'
                      ? null
                      : () {
                          Navigator.pop(context);
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ThoughtsScreen(),
                            ),
                          );
                        },
                ),
                ListTile(
                  leading: const Icon(Icons.people_outline),
                  title: const Text('Connections'),
                  tileColor: selectedItem == 'connections'
                      ? AppConstants.inputBackground
                      : null,
                  selected: selectedItem == 'connections',
                  selectedTileColor: AppConstants.inputBackground,
                  splashColor: AppConstants.primaryColor,
                  onTap: selectedItem == 'connections'
                      ? null
                      : () {
                          Navigator.pop(context);
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ConnectionsScreen(),
                            ),
                          );
                        },
                ),
              ],
            ),
          ),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: Column(
              children: <Widget>[
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.person_outline),
                  title: const Text('Profile'),
                  tileColor: selectedItem == 'profile'
                      ? AppConstants.inputBackground
                      : null,
                  selected: selectedItem == 'profile',
                  selectedTileColor: AppConstants.inputBackground,
                  splashColor: AppConstants.primaryColor,
                  onTap: selectedItem == 'profile'
                      ? null
                      : () {
                          Navigator.pop(context);
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfileScreen(),
                            ),
                          );
                        },
                ),
                ListTile(
                  leading: const Icon(Icons.settings_outlined),
                  title: const Text('Settings'),
                  tileColor: selectedItem == 'settings'
                      ? AppConstants.inputBackground
                      : null,
                  selected: selectedItem == 'settings',
                  selectedTileColor: AppConstants.inputBackground,
                  splashColor: AppConstants.primaryColor,
                  onTap: selectedItem == 'settings'
                      ? null
                      : () {
                          Navigator.pop(context);
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SettingsScreen(),
                            ),
                          );
                        },
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('Logout'),
                  splashColor: AppConstants.primaryColor,
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                      (route) => false,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
