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
              const SizedBox(
                height: 16,
              ),
               PrimaryButton(text: 'Get Started', onPressed: (){},),
              const SizedBox(
                height: 16,
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

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  const PrimaryButton({
    Key? key,
    this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(38.0)),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: AppColors.greenGradient,
            )),
        child: InkWell(
          onTap: onPressed,
          child: Container(
            height: 64.0,
            alignment: Alignment.center,
            child: Text(
              text,
              style: AppTextStyle.mediumText18.copyWith(color: AppColors.white),
            ),
          ),
        ),
      ),
    );
  }
}
