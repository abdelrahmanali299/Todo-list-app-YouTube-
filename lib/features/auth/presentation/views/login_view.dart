import 'package:flutter/material.dart';
import 'package:to_do_list/features/auth/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: LoginViewBody()));
  }
}
