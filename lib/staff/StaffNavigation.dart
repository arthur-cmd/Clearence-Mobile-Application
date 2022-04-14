// ignore_for_file: constant_identifier

import 'package:bloc/bloc.dart';
import 'package:ocms/pages/homepage.dart';
import 'package:ocms/pages/Welcome.dart';
import 'package:ocms/staff/pages/Welcome.dart';
import 'package:ocms/staff/pages/homepage.dart';
import '../staff/pages/ClearencePage.dart';
import '../staff/pages/StatusPage.dart';
import '../staff/pages/settings.dart';
//import '../sidebar_layout/SideBarLayout.dart';

enum StaffNavigationEvents {
  HomepageClickedEvent,
  ClearenceClickedEvent,
  StatusClickedEvent,
  WelcomeClickedEvent,
  SettingClickedEvent,
}

abstract class StaffNavigationStates {}

class StaffNavigationBloc extends Bloc<StaffNavigationEvents, StaffNavigationStates> {
  StaffNavigationBloc() : super(StaffWelcomepage());

  //NavigationBloc() : super();

  @override
  StaffNavigationStates get initialState => StaffHomepage();

  @override
  Stream<StaffNavigationStates> mapEventToState(StaffNavigationEvents event) async* {
    switch (event) {
      case StaffNavigationEvents.HomepageClickedEvent:
        yield StaffHomepage();
        break;

      case StaffNavigationEvents.ClearenceClickedEvent:
        yield StaffClearencePage();
        break;

      case StaffNavigationEvents.StatusClickedEvent:
        yield StaffStatusPage();
        break;

      case StaffNavigationEvents.WelcomeClickedEvent:
        yield StaffWelcomepage();

        break;

      case StaffNavigationEvents.SettingClickedEvent:
        yield StaffSettingspage();
        break;
      default:
    }
  }
}
