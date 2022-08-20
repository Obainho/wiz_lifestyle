import 'package:flutter/material.dart';
import 'package:wiz_lifestyle/pages/main_page.dart';
import '../pages/user_page.dart';
import '../pages/login_page.dart';
import '../pages/register_page.dart';

class RouteManager {
  static const String homePage = '/';
  static const String loginPage = '/loginPage';
  static const String registerPage = '/registerPage';
  static const String userPage = '/userPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
          builder: (context) => const Mainpage(),
        );
      case loginPage:
        return MaterialPageRoute(
          builder: (context) => LoginPage(firstname: 'Firstname', lastname: 'Lastname', email: 'Email Address'),
        );
      case registerPage:
        return MaterialPageRoute(
          builder: (context) => const RegisterPage(),
        );
      case userPage:
        return MaterialPageRoute(
          builder: (context) => UserPage(firstname: 'Firstname', lastname: 'Lastname', email: 'Email Address'),
        );

      default:
        throw const FormatException('Route not found. Check route again.');
    }
  }
}
