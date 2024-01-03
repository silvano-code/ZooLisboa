import 'package:flutter/material.dart';

import '../main.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isDarkMode = false;
  String selectedLanguage = 'PT';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: zooRed,
        title: Center(
          child: Text(
            'Settings',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Language:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                buildLanguageButton('PT'),
                SizedBox(width: 16),
                buildLanguageButton('EN'),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Theme Mode:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            SwitchListTile(
              title: Text('Dark Mode'),
              value: isDarkMode,
              onChanged: (value) {
                setState(() {
                  isDarkMode = value;
                });
                // Implement logic to switch between light/dark mode
                // You may want to use a Theme or other state management for this.
              },
            ),
            Spacer(), // Add Spacer to push the next content to the bottom
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 16),
                  Text(
                    'Information about the App:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Project made by Francisco Silvano',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLanguageButton(String language) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          selectedLanguage = language;
        });
        // Implement logic to change the app language
        // You may want to use a localization package for this.
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          selectedLanguage == language ? Colors.blue : Colors.grey,
        ),
      ),
      child: Text(language),
    );
  }
}
