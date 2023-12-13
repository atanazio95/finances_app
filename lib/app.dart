import 'package:finances_app/common/constants/themes/default_theme.dart';
import 'package:finances_app/features/sign_up/sign_up_page.dart';
import 'package:finances_app/features/splash/splash_page.dart';
import 'package:flutter/material.dart';

import 'features/onboarding/onboarding_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: defaultTheme,
      home: SignUpPage(),
    );
  }
}
