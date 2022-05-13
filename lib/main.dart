import 'package:flutter/material.dart';
import './sidebar_layout/SideBarLayout.dart';
import './pages/option.dart';
import 'pages/Register.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ocm',
      debugShowCheckedModeBanner: false,
      home: Option(), //SideBarLayout(),
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white, primaryColor: Colors.white),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool _isLoading = false;
  final _formKey = GlobalKey<FormState>();
  String regno = "", password = "";
  Widget _buildLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'OCMS',
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.height / 25,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ],
    );
  }

  Widget _buildPasswordRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.text,
        onChanged: (value) {
          setState(() {
            password = value;
          });
        },
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.lock,
              color: HexColor("013221"),
            ),
            labelText: 'password'),
      ),
    );
  }

  Widget _buildForgetPaswordButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Loginpage()),
            );
          },
          child: Text(
            'Already have an account?',
            style: TextStyle(color: HexColor("013221")),
          ),
        ),
      ],
    );
  }

  Widget _buildLoginButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 1.4 * (MediaQuery.of(context).size.height / 20),
          width: 5 * (MediaQuery.of(context).size.width / 10),
          margin: EdgeInsets.only(bottom: 20),
          child: RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            color: HexColor("013221"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SideBarLayout()),
              );
            },
            child: Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildEmailRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.text,
        onChanged: (value) {
          setState(() {
            regno = value;
          });
        },
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.confirmation_number,
              color: HexColor("013221"),
            ),
            labelText: 'Registration number'),
      ),
    );
  }

  Widget _buildContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: <Widget>[
        ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      Text(
                        "Login",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height / 30),
                      ),
                    ],
                  ),
                  _buildEmailRow(),
                  _buildPasswordRow(),
                  _buildForgetPaswordButton(),
                  _buildLoginButton(),
                  //Text(
                  //"Make sure you have an existing account from aris",
                  //style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  //fontSize: MediaQuery.of(context).size.height / 40,
                  //color: Colors.black),
                  // )
                ],
              ),
            ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: HexColor("013221"),
          body: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  decoration: BoxDecoration(
                      color: HexColor("013221"),
                      borderRadius: BorderRadius.only(
                        bottomLeft: const Radius.circular(70),
                        bottomRight: const Radius.circular(70),
                      )),
                ),
              ),
              SizedBox(
                height: 1000,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    SizedBox(height: 20),
                    _buildLogo(),
                    SizedBox(height: 70),
                    _buildContainer(),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
