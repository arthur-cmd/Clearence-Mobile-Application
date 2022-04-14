// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:ocms/bloc%20navigation/navigation_block.dart';
//import '../bloc navigation/navigation_block.dart';
import 'package:ocms/staff/staffSidebar.dart';
import 'StaffNavigation.dart';
//import '../pages/homepage.dart';

class StaffSideBarLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider<StaffNavigationBloc>(
      create: (context) => StaffNavigationBloc(),
      child: Stack(
        children: <Widget>[
          BlocBuilder<StaffNavigationBloc, StaffNavigationStates>(
            builder: (context, navigationState) {
              return navigationState as Widget;
            },
          ),
          StaffSideBar()
        ],
      ),
    ));
  }
}
