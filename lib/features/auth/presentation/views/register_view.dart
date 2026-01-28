import 'package:flutter/material.dart';
import 'package:to_do_list/features/auth/presentation/views/widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  static const String routeName = '/register';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: RegisterViewBody()));
  }
}
