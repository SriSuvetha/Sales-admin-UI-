import 'package:bloc/bloc.dart';
import '../pages/coworkers.dart';
import '../pages/customerinteraction.dart';
import '../pages/dashboard.dart';
import '../pages/profilepage.dart';

enum NavigationEvents {
  DashboardPageClickedEvent,
  CoWorkersClickedEvent,
  CustomerInteractionPageClickedEvent,
  ProfilePageClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState =>ProfilePage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.ProfilePageClickedEvent:
        yield ProfilePage();
        break;
      case NavigationEvents.DashboardPageClickedEvent:
        yield DashboardPage();
        break;
      case NavigationEvents.CoWorkersClickedEvent:
        yield CoWorkersPage();
        break;
      case NavigationEvents.CustomerInteractionPageClickedEvent:
        yield CustomerInteractionPage();
        break;
    }
  }
}
