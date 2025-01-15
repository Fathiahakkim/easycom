import 'package:flutter/material.dart';
import 'login_page.dart';
import 'sign_up_page.dart';
import 'map_screen.dart';
import 'carpool_screen.dart';
import 'route_planner_screen.dart';

void main() {
  runApp(my_app());
}

class my_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Commute',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
      routes: {
        '/login': (_) => LoginPage(),

        '/signup': (_) => SignUpPage(),
        '/map': (_) => MapScreen(),
        '/carpool': (_) => CarpoolScreen(),
        '/route-planner': (_) => RoutePlannerScreen(),
      },
    );
  }
}