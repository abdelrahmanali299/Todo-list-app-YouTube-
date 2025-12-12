import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_list/features/onboarding/presentation/manager/cubits/onboarding/onboarding_cubit.dart';
import 'package:to_do_list/features/onboarding/presentation/manager/cubits/onboarding/onboarding_states.dart';
import 'package:to_do_list/features/onboarding/presentation/views/widgets/dot_indecator.dart';

class DotIndecatorSection extends StatelessWidget {
  const DotIndecatorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingStates>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: List.generate(3, (i) {
            int currentIndex = context.read<OnboardingCubit>().currentPageIndex;
            return DotIndecator(isCurrent: i == currentIndex);
          }),
        );
      },
    );
  }
}
