import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ocms/main.dart';
import 'package:ocms/staff/login.dart';
import 'Register.dart';
import 'package:ocms/staff/pages/register.dart';
import 'package:hexcolor/hexcolor.dart';
//import './sidebar_layout/SideBarLayout.dart';

class Option extends StatefulWidget {
  const Option({Key? key}) : super(key: key);

  @override
  State<Option> createState() => _OptionState();
}

class _OptionState extends State<Option> {
  Widget _buildLogo() {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'OCMS',
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.height / 25,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ],
      ),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        
        Image.asset('assets/images/logo-udsm-.png'),
      ]),
    ]);
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
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    Padding(
                      padding:
                          EdgeInsets.only(left: 15.0, top: 10.0, bottom: 10.0),
                      child: Text(
                        'Welcome to OCMS',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 15.0, top: 10.0, bottom: 15.0),
                      child: Text(
                        'Clearence portal where students and staffs can perform clearance remotely.',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 15.0, top: 10.0, bottom: 15.0),
                      child: Text(
                        'Choose type of user to start',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables

                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StaffRegisterpage()),
                        );
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      color: HexColor("013221"),
                      child: Text(
                        'Staff?',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),

                    //Text(
                    //"staff",
                    //style: TextStyle(
                    //  fontSize: MediaQuery.of(context).size.height / 30),
                    //),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Registerpage()),
                        );
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      color: HexColor("013221"),
                      child: Text(
                        'Student?',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),

                    //Text(
                    //"student",
                    //style: TextStyle(
                    //fontSize: MediaQuery.of(context).size.height / 30),
                    //),
                  ],
                )
                // _buildEmailRow(),
                // _buildPasswordRow(),
                // _buildForgetPaswordButton(),
                // _buildLoginButton(),
                //Text(
                //"Make sure you have an existing account from aris",
                //style: TextStyle(
                //fontWeight: FontWeight.bold,
                //fontSize: MediaQuery.of(context).size.height / 40,
                //color: Colors.black),
                // )
              ],
            ),
          ),
        )
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
              //SizedBox(height: 1000),
              Center(
                child: SizedBox(
                  height: 1000,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      SizedBox(height: 30),
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
