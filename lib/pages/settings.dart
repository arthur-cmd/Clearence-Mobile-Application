//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:ocms/bloc%20navigation/navigation_block.dart';
import 'package:ocms/main.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:hexcolor/hexcolor.dart';
//import 'package:app_settings/app_settings.dart';

class Settingspage extends StatelessWidget with NavigationStates {
  get isSwitched => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("settings"),
        backgroundColor: HexColor("013221"),
      ),

      // ignore: prefer_const_literals_to_create_immutables
      body: SettingsList(
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
              SettingsTile.navigation(
                leading: Icon(Icons.lock),
                title: Text('Security'),
                value: Text('Fingerprint'),
              ),
              SettingsTile.switchTile(
                onToggle: (value) {},
                initialValue: true,
                leading: Icon(Icons.fingerprint),
                title: Text('use finger print'),
              ),
              SettingsTile.switchTile(
                onToggle: (value) {},
                initialValue: true,
                leading: Icon(Icons.lock),
                title: Text('change password'),
              ),
              SettingsTile.navigation(
                leading: Icon(Icons.description),
                title: Text('Misc'),
                value: Text('Term of service'),
              ),
              SettingsTile.navigation(
                leading: Icon(Icons.description),
                title: Text(''),
                value: Text('open source licences'),
              ),
              SettingsTile.navigation(
                leading: Icon(Icons.exit_to_app),
                title: Text('Logout'),
              ),
            ],
          ),
        ],
      ),
      //RaisedButton(
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      // color: Colors.blue,
      //onPressed: () {
      //Navigator.pushReplacement(
      //context,
      //MaterialPageRoute(builder: (context) => Loginpage()),
      //);
      //},
      //child: Text(
      //'Logout',
      //style: TextStyle(color: Colors.white, letterSpacing: 1.5, fontSize: 30),
      //),
      //));
    );
  }
}
