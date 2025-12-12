import 'package:flutter/material.dart';
import 'package:to_do_list/features/onboarding/data/models/onboarding_model.dart';

class PageViewBody extends StatelessWidget {
  const PageViewBody({
    super.key,
    required this.onboardingModel,
    required this.currentIndex,
  });
  final OnboardingModel onboardingModel;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      // width / hight = 1
      children: [
        SizedBox(height: 20), //300 --> screen width
        AspectRatio(
          aspectRatio: 1.5,
          child: Image.asset(onboardingModel.image),
        ),
        SizedBox(height: 50),

        SizedBox(height: 50),

        Text(
          onboardingModel.title,
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 40),
        Text(
          textAlign: TextAlign.center,
          onboardingModel.desc,
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
        ),
      ],
    );
  }
}
