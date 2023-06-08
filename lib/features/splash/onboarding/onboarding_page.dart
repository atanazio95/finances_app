import 'package:finances_app/common/constants/app_colors.dart';
import 'package:finances_app/common/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Align(
          child: Column(
            children: [
              const SizedBox(height: 60.0),
              Expanded(
                flex: 2,
                child: Container(
                  color: AppColors.iceWhite,
                  child: Image.asset('assets/images/man.png'),
                ),
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
              ElevatedButton(onPressed: () {}, child: Text('Get start')),
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
