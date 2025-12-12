import 'package:flutter/material.dart';

class DotIndecator extends StatelessWidget {
  const DotIndecator({super.key, required this.isCurrent});
  final bool isCurrent;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      width: 25,
      height: 5,
      decoration: BoxDecoration(
        color: isCurrent ? Colors.white : Colors.grey,
        borderRadius: BorderRadius.circular(56),
      ),
    );
  }
}
