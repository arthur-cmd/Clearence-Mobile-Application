import 'package:flutter/material.dart';
//import './sidebar_layout/SideBarLayout.dart';

class Option extends StatefulWidget {
  const Option({Key? key}) : super(key: key);

  @override
  State<Option> createState() => _OptionState();
}

class _OptionState extends State<Option> {
  

 

  Widget _buildContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.3,
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
                      "choose type of user ",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 30),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    Text(
                      "staff",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 30),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    Text(
                      "student",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 30),
                    ),
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
          backgroundColor: Color(0xfff2f3f7),
          body: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        bottomLeft: const Radius.circular(70),
                        bottomRight: const Radius.circular(70),
                      )),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  
                  _buildContainer(),
                ],
              ),
            ],
          )),
    );
  }
}
