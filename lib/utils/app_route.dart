import 'package:day_task_app/view/screen/splash_screen.dart';
import 'package:flutter/material.dart';

import '../view/screen/login_screen.dart';
import '../view/screen/signup_screen.dart';

class AppRoute {
  static const splashScreen = "/";
  static const loginScreen = "/loginScreen";
  static const signupScreen = "/signupScreen";

  static Route<dynamic> getOnGenerateRoute(RouteSettings settings) {
    AppRoute r = AppRoute();
    switch (settings.name) {
      case loginScreen: return r.getScreen(LoginScreen());
      case signupScreen:return r.getScreen(SignupScreen());
      case splashScreen:
      default:return r.getScreen(const SplashScreen());
    }
  }

  Route<dynamic> getScreen(Widget screen) {
    return MaterialPageRoute(builder: (_) => screen);
  }
}
