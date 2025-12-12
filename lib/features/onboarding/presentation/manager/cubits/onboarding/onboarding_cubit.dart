import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_list/features/onboarding/presentation/manager/cubits/onboarding/onboarding_states.dart';

class OnboardingCubit extends Cubit<OnboardingStates> {
  int currentPageIndex = 0;
  PageController pageController = PageController();
  OnboardingCubit() : super(OnboardingInitial());
  void changePage(int index) {
    pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
    currentPageIndex = index;
    emit(OnboardingSuccess());
  }
}
