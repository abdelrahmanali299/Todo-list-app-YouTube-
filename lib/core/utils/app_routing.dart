import 'package:flutter/material.dart';
import 'package:to_do_list/features/auth/presentation/views/login_view.dart';
import 'package:to_do_list/features/auth/presentation/views/register_view.dart';
import 'package:to_do_list/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:to_do_list/features/onboarding/presentation/views/welcome_view.dart';

class AppRouting {
  static Route<dynamic>? appRounting(RouteSettings settings) {
    switch (settings.name) {
      case WelcomeView.routeName:
        return MaterialPageRoute(builder: (_) => WelcomeView());
      case OnboardingView.routeName:
        return MaterialPageRoute(builder: (_) => OnboardingView());
      case LoginView.routeName:
        return MaterialPageRoute(builder: (_) => LoginView());
      case RegisterView.routeName:
        return MaterialPageRoute(builder: (_) => RegisterView());

      default:
        return null;
    }
  }
}
