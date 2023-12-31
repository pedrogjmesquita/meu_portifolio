import 'package:flutter/material.dart';
import 'package:meu_portifolio/breakpoints.dart';
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
    return LayoutBuilder(builder: (context, constraints) {
      return constraints.maxWidth > (tabletBreakpoint - 101)
          ? Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Wrap(
                  runAlignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 50),
                      constraints:
                          const BoxConstraints(maxHeight: 128, maxWidth: 128),
                      child: Image.asset(skillImage),
                    ),
                    Wrap(
                        runSpacing: 10,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: subSkillText
                            .map((subSkill) => SubSkill(
                                  subSkillText: subSkill,
                                  skillColor: skillColor,
                                ))
                            .toList()),
                  ]),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 50),
                    constraints:
                        const BoxConstraints(maxHeight: 100, maxWidth: 100),
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
                ]);

    });
  }
}
