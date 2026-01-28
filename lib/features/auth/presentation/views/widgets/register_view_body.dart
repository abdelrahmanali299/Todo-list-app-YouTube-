import 'package:flutter/material.dart';
import 'package:to_do_list/core/utils/app_textstyles.dart';
import 'package:to_do_list/core/widgets/back_button.dart';
import 'package:to_do_list/core/widgets/custom_elevated_button.dart';
import 'package:to_do_list/core/widgets/custom_text_button.dart';
import 'package:to_do_list/core/widgets/custom_text_field.dart';
import 'package:to_do_list/features/auth/presentation/views/widgets/or_section.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(alignment: Alignment.topLeft, child: ButtonBack()),
            SizedBox(height: 40),
            Text('Register', style: AppTextStyles.latoBold32),
            SizedBox(height: 50),
            Text('Username', style: AppTextStyles.latoRegular16),
            SizedBox(height: 5),
            CustomTextField(hint: 'Enter your Username'),
            SizedBox(height: 25),
            Text('Password', style: AppTextStyles.latoRegular16),
            SizedBox(height: 5),
            CustomTextField(hint: '● ● ● ● ● ● ●', obscureText: true),
            SizedBox(height: 25),
            Text('Confirm Password', style: AppTextStyles.latoRegular16),
            SizedBox(height: 5),
            CustomTextField(hint: '● ● ● ● ● ● ●', obscureText: true),
            SizedBox(height: 70),

            CustomElevatedButton(title: 'Register', onPressed: () {}),
            SizedBox(height: 30),
            OrSection(),
            SizedBox(height: 30),

            CustomElevatedButton(
              backgroundColor: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 10,
                children: [
                  Image.asset('assets/images/google.png'),
                  Text(
                    'Register with Google',
                    style: AppTextStyles.latoRegular16.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              onPressed: () {},
            ),
            SizedBox(height: 32),
            CustomElevatedButton(
              backgroundColor: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 10,
                children: [
                  Image.asset('assets/images/apple.png'),
                  Text(
                    'Register with Apple',
                    style: AppTextStyles.latoRegular16.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              onPressed: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: AppTextStyles.latoRegular12.copyWith(
                    color: Color(0xff979797),
                  ),
                ),
                CustomTextButton(
                  title: 'Login',
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
