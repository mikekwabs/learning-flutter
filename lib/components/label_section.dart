import "package:flutter/material.dart";
import "../utils/styles.dart";

class LabelSection extends StatelessWidget {
  final String text;
  final TextStyle style;

  const LabelSection({required this.style, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: style,
        ),
        Icon(
          Icons.more_horiz,
          color: icon,
          size: 28,
        )
      ],
    );
  }
}
