import 'package:flutter/material.dart';
//import 'package:ocms/bloc%20navigation/navigation_block.dart';
import 'package:ocms/staff/StaffNavigation.dart';
import 'package:ocms/main.dart';
//import 'package:app_settings/app_settings.dart';

class StaffSettingspage extends StatelessWidget with StaffNavigationStates {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      color: Colors.blue,
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Loginpage()),
        );
      },
      child: Text(
        'Logout',
        style: TextStyle(color: Colors.white, letterSpacing: 1.5, fontSize: 30),
      ),
    ));
  }
}
