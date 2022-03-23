// ignore_for_file: constant_identifier

import 'package:bloc/bloc.dart';
import 'package:ocms/pages/homepage.dart';
import 'package:ocms/pages/Welcome.dart';
import '../pages/ClearencePage.dart';
import '../pages/StatusPage.dart';
//import '../sidebar_layout/SideBarLayout.dart';

enum NavigationEvents {
  HomepageClickedEvent,
  ClearenceClickedEvent,
  StatusClickedEvent,
  WelcomeClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  NavigationBloc() : super(Welcomepage());

  //NavigationBloc() : super();

  @override
  NavigationStates get initialState => Homepage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomepageClickedEvent:
        yield Homepage();
        break;

      case NavigationEvents.ClearenceClickedEvent:
        yield ClearencePage();
        break;

      case NavigationEvents.StatusClickedEvent:
        yield StatusPage();
        break;

      case NavigationEvents.WelcomeClickedEvent:
        yield Welcomepage();

        break;
      default:
    }
  }
}
