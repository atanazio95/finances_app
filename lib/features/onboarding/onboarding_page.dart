import 'package:finances_app/common/constants/app_colors.dart';
import 'package:finances_app/common/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../common/constants/widgets/primary_button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.iceWhite,
        body: Align(
          child: Column(
            children: [
              const SizedBox(height: 60.0),
              Expanded(
                flex: 2,
                child: Image.asset('assets/images/man.png'),
              ),
              Text(
                'Spend smarter',
                style: AppTextStyle.mediumText
                    .copyWith(color: AppColors.greenlightTwo),
              ),
              Text(
                'Save more',
                style: AppTextStyle.mediumText
                    .copyWith(color: AppColors.greenlightTwo),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: PrimaryButton(
                  text: 'Get Started',
                  onPressed: () {},
                ),
              ),
              Text(
                'Already have account? Log In',
                style: AppTextStyle.smallText.copyWith(color: AppColors.grey),
              ),
              const SizedBox(
                height: 60.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
