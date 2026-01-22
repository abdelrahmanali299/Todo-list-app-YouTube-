import 'package:flutter/material.dart';
import 'package:to_do_list/core/constants.dart';
import 'package:to_do_list/core/services/prefs_service.dart';
import 'package:to_do_list/core/utils/app_routing.dart';
import 'package:to_do_list/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:to_do_list/features/onboarding/presentation/views/welcome_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PrefsService.init();
  runApp(const ToDOList());
}

class ToDOList extends StatefulWidget {
  const ToDOList({super.key});

  @override
  State<ToDOList> createState() => _ToDOListState();
}

class _ToDOListState extends State<ToDOList> {
  bool isFirstTime = false;
  @override
  void initState() {
    isFirstTime =
        PrefsService.getBool(key: AppConstants.isFirstTimeKey) ?? true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xff121212),
      ),
      initialRoute: isFirstTime
          ? OnboardingView.routeName
          : WelcomeView.routeName,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouting.appRounting,
    );
  }
}
