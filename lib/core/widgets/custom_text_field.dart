import 'package:flutter/material.dart';
import 'package:to_do_list/core/utils/app_textstyles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.obscureText,
    this.style,
    required this.hint,
  });
  final bool? obscureText;
  final TextStyle? style;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscuringCharacter: '●',
      obscureText: obscureText ?? false,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      cursorColor: Colors.white,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        filled: true,
        fillColor: Color(0xff1D1D1D),
        hintText: hint,
        hintStyle: AppTextStyles.latoRegular16.copyWith(
          color: Color(0xff535353),
        ),
        focusedBorder: buildBorder(),
        enabledBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Color(0xff979797)),
    );
  }
}
