import 'package:flutter/material.dart';
import 'package:ocms/bloc%20navigation/navigation_block.dart';

class StatusPage  extends StatelessWidget with NavigationStates{
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("status",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 28),),
    );
  }
}