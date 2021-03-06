// ignore_for_file: import_of_legacy_library_into_null_safe

import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'StaffSideBarLayout.dart';
import 'package:flutter/material.dart';
import 'package:ocms/bloc%20navigation/navigation_block.dart';
import 'StaffNavigation.dart';
import 'package:ocms/sidebar_layout/menu_item.dart';
import 'StaffMenuItem.dart';
import '../pages/clearencepage.dart';
import '../pages/StatusPage.dart';

import '../bloc navigation/navigation_block.dart';

//import 'package:solaris/constants.dart';
import 'package:rxdart/rxdart.dart';
import 'package:hexcolor/hexcolor.dart';

class StaffSideBar extends StatefulWidget {
  @override
  State<StaffSideBar> createState() => _StaffSideBarState();
}

class _StaffSideBarState extends State<StaffSideBar>
    with SingleTickerProviderStateMixin<StaffSideBar> {
  late AnimationController _animationController;
  late StreamController<bool> isSidebarOpenedStreamController;
  late Stream<bool> isSidebarOpenedStream;
  late StreamSink<bool> isSidebarOpenedSink;
  //final bool IsSideBarOpened = true;
  final _animationDuration = const Duration(milliseconds: 500);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: _animationDuration);
    isSidebarOpenedStreamController = PublishSubject<bool>();
    isSidebarOpenedStream = isSidebarOpenedStreamController.stream;
    isSidebarOpenedSink = isSidebarOpenedStreamController.sink;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    isSidebarOpenedStreamController.close();
    isSidebarOpenedSink.close();
    super.dispose();
  }

  void onIconPressed() {
    // ignore: unused_local_variable
    final animationstatus = _animationController.status;
    final isAnimationCompleted = animationstatus == AnimationStatus.completed;

    if (isAnimationCompleted) {
      isSidebarOpenedSink.add(false);
      _animationController.reverse();
    } else {
      isSidebarOpenedSink.add(true);
      _animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return StreamBuilder<bool>(
      initialData: false,
      stream: isSidebarOpenedStream,
      builder: (context, isSideBarOpenedAsync) {
        return AnimatedPositioned(
          duration: _animationDuration,
          top: 0,
          bottom: 0,
          left: (isSideBarOpenedAsync.data ?? false) ? 0 : -screenWidth,
          right: (isSideBarOpenedAsync.data ?? false) ? 0 : screenWidth - 50,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  color: HexColor("013221"),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 100,
                      ),
                      ListTile(
                        title: Text(
                          'Dr.Kandoro',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        subtitle: Text(
                          'udsm',
                          style:
                              TextStyle(color: Colors.blueGrey, fontSize: 20),
                        ),
                        leading: CircleAvatar(
                          child: Icon(
                            Icons.perm_identity,
                            color: Colors.white,
                          ),
                          radius: 40,
                        ),
                      ),
                      Divider(
                        height: 64,
                        thickness: 0.5,
                        color: Colors.white,
                        indent: 32,
                        endIndent: 32,
                      ),
                      // ignore: unnecessary_const
                      MenuItem(
                        icon: Icons.home,
                        title: 'home',
                        onTap: () {
                          onIconPressed();
                          BlocProvider.of<StaffNavigationBloc>(context)
                              .add(StaffNavigationEvents.WelcomeClickedEvent);
                        },
                      ),
                      MenuItem(
                        icon: Icons.present_to_all_sharp,
                        title: 'Start clearence',
                        onTap: () {
                          onIconPressed();
                          BlocProvider.of<StaffNavigationBloc>(context)
                              .add(StaffNavigationEvents.HomepageClickedEvent);
                        },
                      ),

                      MenuItem(
                          icon: Icons.fact_check,
                          title: 'Clearence status',
                          onTap: () {
                            onIconPressed();
                            BlocProvider.of<StaffNavigationBloc>(context).add(
                                StaffNavigationEvents.ClearenceClickedEvent);
                          }),
                      Divider(
                        height: 64,
                        thickness: 0.5,
                        color: Colors.white,
                        indent: 32,
                        endIndent: 32,
                      ),

                      MenuItem(
                          icon: Icons.graphic_eq,
                          title: 'Notifications',
                          onTap: () {
                            onIconPressed();
                            BlocProvider.of<StaffNavigationBloc>(context)
                                .add(StaffNavigationEvents.StatusClickedEvent);
                          }),
                      MenuItem(
                        icon: Icons.settings,
                        title: 'Settings',
                        onTap: () {
                          onIconPressed();
                          BlocProvider.of<StaffNavigationBloc>(context)
                              .add(StaffNavigationEvents.SettingClickedEvent);
                        },
                      ),
                      //MenuItem(
                      //icon: Icons.exit_to_app,
                      //title: 'Logout',
                      //onTap: () {
                      //onIconPressed();
                      //BlocProvider.of<NavigationBloc>(context)
                      //.add(NavigationEvents.HomepageClickedEvent);
                      //}),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, -0.9),
                child: GestureDetector(
                  onTap: () {
                    onIconPressed();
                  },
                  child: ClipPath(
                    clipper: CustomeMenuClipper(),
                    child: Container(
                      width: 35,
                      height: 110,
                      color: HexColor("013221"),
                      alignment: Alignment.centerLeft,
                      child: AnimatedIcon(
                        progress: _animationController.view,
                        icon: AnimatedIcons.menu_close,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class CustomeMenuClipper extends CustomClipper<Path> {
  @override
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Paint paint = Paint();
    paint.color = Colors.white;

    final width = size.width;
    final height = size.height;

    Path path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(0, 0, 10, 10);
    path.quadraticBezierTo(width - 1, height / 2 - 20, width, height / 2);
    path.quadraticBezierTo(width + 1, height / 2 + 20, 10, height - 16);
    path.quadraticBezierTo(0, height - 8, 0, height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
