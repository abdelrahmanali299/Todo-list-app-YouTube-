import 'package:flutter/material.dart';
import 'package:to_do_list/features/onboarding/presentation/views/onboarding_view.dart';

void main() {
  runApp(const ToDOList());
}

class ToDOList extends StatelessWidget {
  const ToDOList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xff121212),
      ),
      debugShowCheckedModeBanner: false,
      home: OnboardingView(),
    );
  }
}
