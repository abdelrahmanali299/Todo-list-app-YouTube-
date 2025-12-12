import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_list/features/onboarding/presentation/manager/cubits/onboarding/onboarding_cubit.dart';
import 'package:to_do_list/features/onboarding/presentation/views/widgets/custom_page_view.dart';
import 'package:to_do_list/features/onboarding/presentation/views/widgets/dot_indecator.dart';
import 'package:to_do_list/features/onboarding/presentation/views/widgets/dot_indecator_section.dart';
import 'package:to_do_list/features/onboarding/presentation/views/widgets/scroll_buttons.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(),
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomPageView(),
              ScrollButtons(),
              DotIndecatorSection(),
            ],
          ),
        ),
      ),
    );
  }
}
