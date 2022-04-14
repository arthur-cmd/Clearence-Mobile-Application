import 'package:flutter/material.dart';
//import 'package:ocms/bloc%20navigation/navigation_block.dart';
import 'package:ocms/staff/StaffNavigation.dart';

class StaffClearencePage  extends StatelessWidget with StaffNavigationStates{
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("clearence",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 28),),
    );
  }
}