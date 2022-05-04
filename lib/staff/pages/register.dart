import 'package:flutter/material.dart';
import 'package:ocms/main.dart';
import 'package:ocms/staff/login.dart';

class StaffRegisterpage extends StatefulWidget {
  const StaffRegisterpage({Key? key}) : super(key: key);

  @override
  State<StaffRegisterpage> createState() => _StaffRegisterpageState();
}

class _StaffRegisterpageState extends State<StaffRegisterpage> {
  String staffId = "", department = "", password = "";
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
              color: Colors.blue,
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
          onPressed: () {},
          child: Text(
            'Already have an account?',
            style: TextStyle(color: Colors.blue),
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
            color: Colors.blue,
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => StaffLogin()),
              );
            },
            child: Text(
              'Register',
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

  Widget _buildCourseRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.text,
        onChanged: (value) {
          setState(() {
            department = value;
          });
        },
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.confirmation_number,
              color: Colors.blue,
            ),
            labelText: 'Department'),
      ),
    );
  }

  Widget _buildEmailRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.text,
        onChanged: (value) {
          setState(() {
            staffId = value;
          });
        },
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.confirmation_number,
              color: Colors.blue,
            ),
            labelText: 'Staff ID number'),
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
                        "Register to OCMS",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height / 30),
                      ),
                    ],
                  ),
                  _buildCourseRow(),
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
          backgroundColor: Colors.lightBlue,
          body: Stack(
            children: <Widget>[
              /*Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        bottomLeft: const Radius.circular(70),
                        bottomRight: const Radius.circular(70),
                      )),
                ),*/
              SizedBox(height: 1000),
              Center(
                child: SizedBox(
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
                ),
              ),
            ],
          )),
    );
  }
}
