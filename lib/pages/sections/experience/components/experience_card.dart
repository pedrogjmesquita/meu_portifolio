import 'package:flutter/material.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({
    super.key,
    required this.experienceImage,
    required this.experienceText,
    required this.maxDefinedWidth,
    });

  final double maxDefinedWidth;
  final String experienceImage;
  final String experienceText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 40),
      child: Row(
        children: [
          Container(
            constraints:  BoxConstraints(maxHeight: maxDefinedWidth/4, maxWidth: maxDefinedWidth/4),
            margin: const EdgeInsets.only(right: 50),
            child: Image.asset(experienceImage),
          ),
          Expanded(
            child: Text(experienceText, style: const TextStyle(fontWeight: FontWeight.w200, color: Color.fromARGB(255, 10, 9, 9), height: 2, fontSize: 20)),
          ),
        ],
        )
    );
  }
}