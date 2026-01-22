import 'package:flutter/material.dart';
import 'package:to_do_list/core/utils/app_textstyles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, this.title, this.onPressed, this.child});
  final String? title;
  final Widget? child;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child:
          child ??
          Text(
            title!,
            style: AppTextStyles.latoRegular16.copyWith(
              color: Colors.white.withValues(alpha: 0.67),
            ),
          ),
    );
  }
}
