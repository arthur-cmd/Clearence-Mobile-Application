import 'package:flutter/material.dart';
//import 'package:ocms/bloc%20navigation/navigation_block.dart';
import 'package:ocms/staff/StaffNavigation.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:hexcolor/hexcolor.dart';

class StaffWelcomepage extends StatelessWidget with StaffNavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
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
                  percent: 0.1,
                  circularStrokeCap: CircularStrokeCap.round,
                  lineWidth: 40.0,
                  progressColor:  HexColor("013221"),
                  center: Text(' 10%'),
                  animation: true,
                ))
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
                          color: Colors.black,
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
