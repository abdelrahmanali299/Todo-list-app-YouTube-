import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_list/core/widgets/custom_elevated_button.dart';
import 'package:to_do_list/core/widgets/custom_text_button.dart';
import 'package:to_do_list/features/onboarding/presentation/manager/cubits/onboarding/onboarding_cubit.dart';

class ScrollButtons extends StatelessWidget {
  const ScrollButtons({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<OnboardingCubit>();
    int currentIndex = cubit.currentPageIndex;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextButton(title: 'Skip', onPressed: () {}),
          Spacer(),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextButton(
                  title: 'Back',
                  onPressed: () {
                    currentIndex = (currentIndex - 1).clamp(0, 2);
                    cubit.changePage(currentIndex.clamp(0, 2));
                  },
                ),

                CustomElevatedButton(
                  title: 'Next',
                  onPressed: () {
                    currentIndex = (currentIndex + 1).clamp(0, 2);
                    cubit.changePage(currentIndex);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
