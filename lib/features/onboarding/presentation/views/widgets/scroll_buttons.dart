import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as _ToDOListState;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_list/core/constants.dart';
import 'package:to_do_list/core/services/prefs_service.dart';
import 'package:to_do_list/core/widgets/custom_elevated_button.dart';
import 'package:to_do_list/core/widgets/custom_text_button.dart';
import 'package:to_do_list/features/onboarding/presentation/manager/cubits/onboarding/onboarding_cubit.dart';
import 'package:to_do_list/features/onboarding/presentation/manager/cubits/onboarding/onboarding_states.dart';
import 'package:to_do_list/features/onboarding/presentation/views/welcome_view.dart';
import 'package:to_do_list/main.dart';

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
          CustomTextButton(
            title: 'Skip',
            onPressed: () {
              Navigator.pushNamed(context, WelcomeView.routeName);
              PrefsService.setBool(
                key: AppConstants.isFirstTimeKey,
                value: false,
              );
            },
          ),
          Spacer(),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: BlocBuilder<OnboardingCubit, OnboardingStates>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Visibility(
                      visible: currentIndex > 0,
                      child: CustomTextButton(
                        title: 'Back',
                        onPressed: () {
                          currentIndex = (currentIndex - 1).clamp(0, 2);
                          cubit.changePage(currentIndex);
                        },
                      ),
                    ),

                    CustomElevatedButton(
                      title: currentIndex == 2 ? 'Get Started' : 'Next',
                      onPressed: () {
                        if (currentIndex == 2) {
                          PrefsService.setBool(
                            key: AppConstants.isFirstTimeKey,
                            value: false,
                          );
                          Navigator.pushNamed(context, WelcomeView.routeName);
                        } else {
                          currentIndex = (currentIndex + 1).clamp(0, 2);
                          cubit.changePage(currentIndex);
                        }
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
