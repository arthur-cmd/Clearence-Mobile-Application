import 'package:flutter/material.dart';
import 'package:ocms/bloc%20navigation/navigation_block.dart';
//import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
//import 'package:google_fonts/google_fonts.dart';

class Welcomepage extends StatelessWidget with NavigationStates {
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
                  percent: 0.1,
                  circularStrokeCap: CircularStrokeCap.round,
                  lineWidth: 40.0,
                  progressColor: Colors.blue,
                  center: Text(' 10%'),
                  animation: true,
                ))
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Container(
                    width: 350,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5),
                        topLeft: Radius.circular(35),
                      ),
                      color: Colors.grey[400],
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        '  Day to day progress will be tracked for fast and easy clearence,Go to the sidebar menu and then press Start clearence to start your clearence',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  )
                ])
          ],
        ));
  }
}
