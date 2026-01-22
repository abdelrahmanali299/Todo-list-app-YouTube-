import 'package:flutter/material.dart';
import 'package:to_do_list/core/utils/app_textstyles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.onPressed,
    this.title,
    this.backgroundColor,
    this.child,
  });
  final void Function()? onPressed;
  final String? title;
  final backgroundColor;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        fixedSize: WidgetStatePropertyAll(Size(0, 50)),
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
      child:
          child ??
          Text(
            title!,
            style: AppTextStyles.latoRegular16.copyWith(color: Colors.white),
          ),
    );
  }
}
