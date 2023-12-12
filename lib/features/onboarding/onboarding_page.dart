import 'dart:math';

import 'package:finances_app/common/constants/app_colors.dart';
import 'package:finances_app/common/constants/app_text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../common/constants/widgets/multi_text_button.dart';
import '../../common/constants/widgets/primary_button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.iceWhite,
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 48.0),
            Image.asset('assets/images/man.png'),
            Text(
              'Spend smarter',
              textAlign: TextAlign.center,
              style: AppTextStyle.mediumText
                  .copyWith(color: AppColors.greenlightTwo),
            ),
            Text(
              'Save more',
              textAlign: TextAlign.center,
              style: AppTextStyle.mediumText
                  .copyWith(color: AppColors.greenlightTwo),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 32,
                right: 32,
                top: 32,
                bottom: 4,
              ),
              child: PrimaryButton(
                text: 'Get Started',
                onPressed: () {},
              ),
            ),
            MultiTextButton(
              onPressed: () => debugPrint('wow'),
              children: [
                Text(
                  'Already have account? ',
                  style: AppTextStyle.smallText.copyWith(
                    color: AppColors.grey,
                  ),
                ),
                Text(
                  'Log in',
                  style: AppTextStyle.smallText.copyWith(
                    color: AppColors.greenlightTwo,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 60.0,
            )
          ],
        ),
      ),
    );
  }
}
