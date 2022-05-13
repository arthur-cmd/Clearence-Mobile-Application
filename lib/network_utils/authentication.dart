import 'package:flutter/material.dart';
import '../pages/Register.dart';
import '../main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../pages/Welcome.dart';

class CheckAuth extends StatefulWidget {
  @override
  _CheckAuthState createState() => _CheckAuthState();
}

class _CheckAuthState extends State<CheckAuth> {
  bool isAuth = false;
  @override
  void initState() {
    _checkIfLoggedIn();
    super.initState();
  }

  void _checkIfLoggedIn() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var token = localStorage.getString('token');
    if (token != null) {
      setState(() {
        isAuth = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (isAuth) {
      child = Welcomepage();
    } else {
      child = Loginpage();
    }
    return Scaffold(
      body: child,
    );
  }
}
