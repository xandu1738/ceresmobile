import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Notifications'),
            trailing: Switch(
              value: true,
              onChanged: (bool value) {},
            ),
          ),
          ListTile(
            title: const Text('Sound'),
            trailing: Switch(
              value: true,
              onChanged: (bool value) {},
            ),
          ),
          ListTile(
            title: const Text('Theme'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to the theme settings page
            },
          ),
          ListTile(
            title: const Text('Help & Feedback'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to the help and feedback page
            },
          ),
        ],
      ),
    );
  }
}
