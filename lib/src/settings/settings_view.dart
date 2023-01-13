import 'package:flutter/material.dart';

import '../../main.dart';
import 'settings_controller.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key, required this.controller}) : super(key: key);

  static const routeName = '/settings';

  final SettingsController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                reklama();
                Navigator.restorablePushNamed(context, '/info');
              },
              child: Text(
                'App Info',
                style: TextStyle(fontSize: 22),
              ),
            ),
            TextButton(
              onPressed: () {
                reklama();
                Navigator.restorablePushNamed(context, '/policy');
              },
              child: Text(
                'Privace Policy',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              // Glue the SettingsController to the theme selection DropdownButton.
              //
              // When a user selects a theme from the dropdown list, the
              // SettingsController is updated, which rebuilds the MaterialApp.
              child: DropdownButton<ThemeMode>(
                // Read the selected themeMode from the controller
                value: controller.themeMode,
                // Call the updateThemeMode method any time the user selects a theme.
                onChanged: controller.updateThemeMode,
                items: const [
                  DropdownMenuItem(
                    value: ThemeMode.system,
                    child: Text('System Theme'),
                  ),
                  DropdownMenuItem(
                    value: ThemeMode.light,
                    child: Text('Light Theme'),
                  ),
                  DropdownMenuItem(
                    value: ThemeMode.dark,
                    child: Text('Dark Theme'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
