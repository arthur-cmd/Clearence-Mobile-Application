//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:ocms/bloc%20navigation/navigation_block.dart';
import 'package:ocms/main.dart';
import 'package:settings_ui/settings_ui.dart';
//import 'package:app_settings/app_settings.dart';

class Settingspage extends StatelessWidget with NavigationStates {
  get isSwitched => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("settings"),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body:SettingsList(
      sections: [
        SettingsSection(
          title: Text('Common'),
          tiles: <SettingsTile>[
            SettingsTile.navigation(
              leading: Icon(Icons.language),
              title: Text('Language'),
              value: Text('English'),
            ),
            SettingsTile.switchTile(
              onToggle: (value) {},
              initialValue: true,
              leading: Icon(Icons.format_paint),
              title: Text('Enable custom theme'),
            ),
          ],
        ),
      ],
    ),

    );
  }
}
