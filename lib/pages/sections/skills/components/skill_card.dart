import 'package:flutter/material.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({
    super.key,
    required this.skillText,
    required this.skillImage,
    });

  final String skillText;
  final String skillImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
        constraints: const BoxConstraints(maxWidth: 256, maxHeight: 256),
        child: Image.asset(skillImage),
        ),
        Text(skillText),
      ],
    );
  }
}