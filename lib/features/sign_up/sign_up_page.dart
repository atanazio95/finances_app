import 'package:flutter/material.dart';
import '../../common/constants/app_colors.dart';
import '../../common/constants/app_text_styles.dart';
import '../../common/constants/widgets/multi_text_button.dart';
import '../../common/constants/widgets/primary_button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
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
          Image.asset('assets/images/sign_up_image.png'),
          Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Your Name",

                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)
                    )),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 32,
              right: 32,
              top: 32,
              bottom: 4,
            ),
            child: PrimaryButton(
              text: 'Sign up',
              onPressed: () {
                debugPrint('tap');
              },
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
        ],
      ),
    );
  }
}
