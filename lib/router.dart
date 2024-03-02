import 'package:flutter/material.dart';
import 'package:promilo_task/Features/Auth/Screens/login_screen.dart';
import 'package:promilo_task/Features/Bottom%20Nav/Screens/bottom_nav_screen.dart';
import 'package:promilo_task/Features/Meetup%20Description/Screens/description_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );

    case DescriptionScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const DescriptionScreen(),
      );

    case NavigationMenu.routeName:
      return MaterialPageRoute(
        builder: (context) => const NavigationMenu(),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: Center(child: Text('Screen Doesnt Exist')),
        ),
      );
  }
}
