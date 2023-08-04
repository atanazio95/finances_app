import 'package:finances_app/common/constants/app_colors.dart';
import 'package:finances_app/common/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

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
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(38.0)),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: onPressed != null
                  ? AppColors.greenGradient
                  : AppColors.greyGradient,
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
