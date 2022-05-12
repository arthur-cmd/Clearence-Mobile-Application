// ignore_for_file: unnecessary_new

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ocms/bloc%20navigation/navigation_block.dart';
//import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:hexcolor/hexcolor.dart';
//import 'package:google_fonts/google_fonts.dart';

class Welcomepage extends StatefulWidget with NavigationStates {
  @override
  State<Welcomepage> createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
  double percent = 0.0;

  late double _height;
  late double _width;
  late Timer timer;

  @override
  void initState() {
    timer = Timer.periodic(Duration(milliseconds: 1000), (_) {
      setState(() {
        percent += 10;
        if (percent >= 100) {
          timer.cancel();
          // percent=0;
        }
      });
    });
    ;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        body: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'Welcome to OCMS',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'Here is Your clearence progress',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: CircularPercentIndicator(
                  radius: 200.0,
                  percent: percent/100,
                  circularStrokeCap: CircularStrokeCap.round,
                  lineWidth: 40.0,
                  progressColor: HexColor("013221"),
                  center: new Text(
                    percent.toString() + "%",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  animation: true,
                  animationDuration: 1200,
                )
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        ' - Day to day progress will be tracked',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ]),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        ' - The clearence progress has to rech 100%',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ]),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        ' So as to finish the process',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ]),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        ' BON VOYAGE',
                        style: TextStyle(
                          color: HexColor("013221"),
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ])
            ])
          ],
        ));
  }
}
