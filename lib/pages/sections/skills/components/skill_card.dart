
import 'package:flutter/material.dart';
import 'package:meu_portifolio/pages/sections/skills/components/sub_skill.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({
    super.key,
    required this.skillImage,
    required this.skillColor,
    required this.subSkillText,
  });

  final String skillImage;
  final Color skillColor;
  final List<String> subSkillText;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1100),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Wrap(
          runAlignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 50),
              constraints: const BoxConstraints(maxHeight: 128, maxWidth: 128),
              child: Image.asset(skillImage),
            ),
            Container(
              constraints: const BoxConstraints(maxWidth: 900),
              child: Wrap(
                  runSpacing: 10,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: subSkillText
                      .map((subSkill) => SubSkill(
                            subSkillText: subSkill,
                            skillColor: skillColor,
                          ))
                      .toList()),
            ),
          ]),
    );
  }
}
