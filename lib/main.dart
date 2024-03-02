import 'package:flutter/material.dart';
import 'package:promilo_task/Features/Auth/Screens/login_screen.dart';
import 'package:promilo_task/Features/Auth/Services/auth_service.dart';
import 'package:promilo_task/Features/Bottom%20Nav/Services/bottom_nav_services.dart';
import 'package:promilo_task/router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BottomNavService(),
        ),
        ChangeNotifierProvider(
          create: (context) => AuthService(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        // Navigat Initial Route Screen
        initialRoute: LoginScreen.routeName,

        // Generate Routes
        onGenerateRoute: (settings) => generateRoute(settings),
      ),
    );
  }
}
