import 'package:flutter/material.dart';
import 'package:to_do_list/core/utils/app_textstyles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.title, this.onPressed});
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: AppTextStyles.latoRegular16.copyWith(
          color: Colors.white.withValues(alpha: 0.67),
        ),
      ),
    );
  }
}
