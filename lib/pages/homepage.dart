import 'package:flutter/material.dart';
import 'package:ocms/bloc%20navigation/navigation_block.dart';

class Homepage  extends StatelessWidget with NavigationStates{
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Homepage",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 28),),
    );
  }
}