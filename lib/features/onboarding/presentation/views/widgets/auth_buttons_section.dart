import 'package:flutter/material.dart';
import 'package:to_do_list/core/widgets/custom_elevated_button.dart';
import 'package:to_do_list/features/auth/presentation/views/login_view.dart';

class AuthButtonsSection extends StatelessWidget {
  const AuthButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomElevatedButton(
            title: 'LOGIN',
            onPressed: () {
              Navigator.pushNamed(context, LoginView.routeName);
            },
          ),
          SizedBox(height: 25),
          CustomElevatedButton(
            backgroundColor: Colors.transparent,
            title: 'CREATE NEW ACCOUNT',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
