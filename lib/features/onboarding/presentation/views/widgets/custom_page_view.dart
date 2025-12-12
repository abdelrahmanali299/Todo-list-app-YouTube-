import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_list/features/onboarding/data/models/onboarding_model.dart';
import 'package:to_do_list/features/onboarding/presentation/manager/cubits/onboarding/onboarding_cubit.dart';
import 'package:to_do_list/features/onboarding/presentation/views/widgets/page_view_body.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({super.key});

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  List<OnboardingModel> onboardingList = [
    OnboardingModel(
      image: 'assets/images/onboarding_1.png',
      title: 'Manage your tasks',
      desc: 'You can easily manage all of your daily tasks in DoMe for free',
    ),
    OnboardingModel(
      image: 'assets/images/onboarding_2.png',
      title: 'Create daily routine',
      desc:
          'In Uptodo  you can create your personalized routine to stay productive',
    ),
    OnboardingModel(
      image: 'assets/images/onboarding_3.png',
      title: 'Create daily routine',
      desc:
          'You can organize your daily tasks by adding your tasks into separate categories',
    ),
  ];
  @override
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: context.read<OnboardingCubit>().pageController,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => PageViewBody(
        onboardingModel: onboardingList[index],
        currentIndex: index,
      ),
      itemCount: onboardingList.length,
    );
  }
}
