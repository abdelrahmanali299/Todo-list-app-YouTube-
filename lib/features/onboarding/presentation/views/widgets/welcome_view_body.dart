import 'package:flutter/material.dart';
import 'package:to_do_list/core/utils/app_textstyles.dart';
import 'package:to_do_list/core/widgets/back_button.dart';
import 'package:to_do_list/features/onboarding/presentation/views/widgets/auth_buttons_section.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(alignment: Alignment.topLeft, child: ButtonBack()),
        SizedBox(height: 55),
        Text('Welcome to UpTodo', style: AppTextStyles.latoBold32),
        SizedBox(height: 25),
        Text(
          textAlign: TextAlign.center,
          'Please login to your account or create new account to continue',
          style: AppTextStyles.latoRegular16.copyWith(
            color: Colors.white.withValues(alpha: 0.67),
          ),
        ),
        Spacer(),
        AuthButtonsSection(),
        SizedBox(height: 50),
      ],
    );
  }
}
