import 'package:flutter/material.dart';
import 'package:sales_admin/routes.dart';
import 'package:sales_admin/theme.dart';
import 'package:sales_admin/screens/sign_in/sign_in_screen.dart';
import 'package:sales_admin/screens/splash/splash_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name

      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
