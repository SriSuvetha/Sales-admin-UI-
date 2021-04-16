import 'package:flutter/widgets.dart';
import 'package:sales_admin/screens/splash/splash_screen.dart';
import 'package:sales_admin/screens/sign_in/sign_in_screen.dart';
import 'package:sales_admin/screens/sidebar/sidebar_layout.dart';
import 'package:sales_admin/screens/videoconference/videoconference.dart';


// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SignInScreen.routeName: (context) => SignInScreen(),
  SplashScreen.routeName: (context) => SplashScreen(),
  SideBarLayout.routeName: (context) => SideBarLayout(),
  VideoScreen.routeName: (context) => VideoScreen(),

};
