import 'package:flutter/material.dart';
import 'package:to_do_list/core/utils/app_textstyles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.onPressed,
    required this.title,
    this.backgroundColor,
  });
  final void Function()? onPressed;
  final String title;
  final backgroundColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
            side: BorderSide(color: Color(0xff8E7CFF), width: 2),
          ),
        ),
        backgroundColor: WidgetStatePropertyAll<Color>(
          backgroundColor ?? Color(0xff8E7CFF),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: AppTextStyles.latoRegular16.copyWith(color: Colors.white),
      ),
    );
  }
}
