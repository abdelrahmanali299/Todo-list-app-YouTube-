import 'package:flutter/material.dart';

class OrSection extends StatelessWidget {
  const OrSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Expanded(child: Divider(color: Color(0xff979797))),
        Text('Or'),
        Expanded(child: Divider(color: Color(0xff979797))),
      ],
    );
  }
}
