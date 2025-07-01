import 'package:expoloredz_flutter/component/constants.dart';
import 'package:flutter/material.dart';

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
                Scaffold.of(
                  context,
                ).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    decoration:
                        const BoxDecoration(
                          color: Colors.white,
                        ),
                    child: Column(
                      mainAxisAlignment:
                          MainAxisAlignment
                              .center,
                      children: [
                        Image.asset(
                          'assets/logo.png',
                          width: 128.0,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Welcome to the journey!',
                          style: TextStyle(
                            color: AppConstants
                                .primaryColor,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.lightbulb_outline,
                    ),
                    title: const Text(
                      'Opportunities',
                    ),
                    tileColor: AppConstants
                        .inputBackground, // This ListTile will retain the tileColor
                    splashColor: AppConstants
                        .primaryColor,
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.chat_bubble_outline,
                    ),
                    title: const Text(
                      'Thoughts',
                    ),
                    // tileColor: AppConstants // Removed tileColor
                    //     .inputBackground,
                    splashColor: AppConstants
                        .primaryColor,
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.people_outline,
                    ),
                    title: const Text(
                      'Connections',
                    ),
                    // tileColor: AppConstants // Removed tileColor
                    //     .inputBackground,
                    splashColor: AppConstants
                        .primaryColor,
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            Align(
              alignment:
                  FractionalOffset.bottomCenter,
              child: Column(
                children: <Widget>[
                  const Divider(),
                  ListTile(
                    leading: const Icon(
                      Icons.person_outline,
                    ),
                    title: const Text(
                      'Profile',
                    ),
                    // tileColor: AppConstants // Removed tileColor
                    //     .inputBackground,
                    splashColor: AppConstants
                        .primaryColor,
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.settings_outlined,
                    ),
                    title: const Text(
                      'Settings',
                    ),
                    // tileColor: AppConstants // Removed tileColor
                    //     .inputBackground,
                    splashColor: AppConstants
                        .primaryColor,
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.logout,
                    ),
                    title: const Text('Logout'),
                    // tileColor: AppConstants // Removed tileColor
                    //     .inputBackground,
                    splashColor: AppConstants
                        .primaryColor,
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Welcome to the Home Page!',
        ),
      ),
    );
  }
}
