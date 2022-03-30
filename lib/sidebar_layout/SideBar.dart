// ignore_for_file: import_of_legacy_library_into_null_safe

import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'SideBarLayout.dart';
import 'package:flutter/material.dart';
import 'package:ocms/bloc%20navigation/navigation_block.dart';
import 'package:ocms/sidebar_layout/menu_item.dart';
import 'menu_item.dart';
import '../pages/clearencepage.dart';
import '../pages/StatusPage.dart';

import '../bloc navigation/navigation_block.dart';

//import 'package:solaris/constants.dart';
import 'package:rxdart/rxdart.dart';

class SideBar extends StatefulWidget {
  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar>
    with SingleTickerProviderStateMixin<SideBar> {
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
                  color: Colors.blue,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 100,
                      ),
                      ListTile(
                        title: Text(
                          'Arthur',
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
                          BlocProvider.of<NavigationBloc>(context)
                              .add(NavigationEvents.WelcomeClickedEvent);
                        },
                      ),
                      MenuItem(
                        icon: Icons.present_to_all_sharp,
                        title: 'Start clearence',
                        onTap: () {
                          onIconPressed();
                          BlocProvider.of<NavigationBloc>(context)
                              .add(NavigationEvents.HomepageClickedEvent);
                        },
                      ),

                      MenuItem(
                          icon: Icons.fact_check,
                          title: 'Clearence progress',
                          onTap: () {
                            onIconPressed();
                            BlocProvider.of<NavigationBloc>(context)
                                .add(NavigationEvents.ClearenceClickedEvent);
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
                            BlocProvider.of<NavigationBloc>(context)
                                .add(NavigationEvents.StatusClickedEvent);
                          }),
                      MenuItem(
                        icon: Icons.settings,
                        title: 'Settings',
                        onTap: () {
                          onIconPressed();
                          BlocProvider.of<NavigationBloc>(context)
                              .add(NavigationEvents.SettingClickedEvent);
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
                  child: Container(
                    width: 35,
                    height: 110,
                    color: Colors.blue,
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
            ],
          ),
        );
      },
    );
  }
}
