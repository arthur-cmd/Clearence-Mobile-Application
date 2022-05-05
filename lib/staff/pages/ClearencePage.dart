import 'package:flutter/material.dart';
//import 'package:ocms/bloc%20navigation/navigation_block.dart';
import 'package:ocms/staff/StaffNavigation.dart';
import 'package:intl/intl.dart';
import '../../Clear.dart';
import 'package:hexcolor/hexcolor.dart';

class StaffClearencePage extends StatelessWidget with StaffNavigationStates {
  final List<Clear> clearencelist = [
    Clear('Housing comitee', DateTime.now(), 'waiting'),
    Clear('Estate manager', DateTime.now(), 'cleared'),
    Clear('Games coach', DateTime.now(), 'not cleared'),
    Clear('Head of Department', DateTime.now(), 'waiting'),
    Clear('Saccos', DateTime.now(), 'waiting'),
    Clear('NHIF', DateTime.now(), 'not cleared'),
    Clear('Library service', DateTime.now(), 'cleared'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: clearencelist.length,
          itemBuilder: (BuildContext context, int index) =>
              buildClear(context, index)),
    );
  }

  Widget buildClear(BuildContext context, int index) {
    final clearme = clearencelist[index];
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 110,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 15.0, top: 8.0, bottom: 4.0),
                child: Text(clearme.title,
                    style: new TextStyle(
                        fontSize: 20, color: HexColor("013221")))),
            Spacer(),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  "${DateFormat('dd/MM/yyyy').format(clearme.startDate).toString()} - ${DateFormat('dd/MM/yyyy').format(clearme.startDate).toString()}",
                )),
            Spacer(),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Spacer(),
            Text(clearme.status),
          ])
        ],
      ),
    );
  }
}
