import 'package:flutter/material.dart';
import '../Tugas10/login_screen.dart';
import '../Tugas10/home_screen.dart';
import '../Tugas11/about_screen.dart';
import '../Tugas11/search_screen.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name) {
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/about':
        return MaterialPageRoute(builder: (_) => AboutScreen());
      case '/search':
        return MaterialPageRoute(builder: (_) => SearchScreen());
      default:
        return _errorRoute();
    }
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      appBar: AppBar(title: Text("Error")),
      body: Center(child: Text('Error page'))
    );
  });
}