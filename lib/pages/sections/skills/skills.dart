import 'package:flutter/material.dart';
import 'package:meu_portifolio/pages/components/section_title.dart';
import 'package:meu_portifolio/pages/sections/skills/components/skills_card.dart';
import 'package:meu_portifolio/pages/sections/skills/components/skills_images.dart';
import 'package:meu_portifolio/pages/sections/skills/components/skills_texts.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      margin: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: SkillsTexts.title),
          SkillCard(
            skillImage: SkillImages.python,
            subSkillText: SkillsTexts.pythonSkills,
            skillColor: const Color.fromRGBO(48, 105, 152, 1),
          ),
          SkillCard(
            skillImage: SkillImages.java,
            subSkillText: SkillsTexts.javaSkills,
            skillColor: const Color.fromRGBO(237, 139, 0, 1),
          ),
          SkillCard(
            skillImage: SkillImages.c,
            subSkillText: SkillsTexts.cSkils,
            skillColor: const Color.fromRGBO(93,107,193, 1),
          ),
          SkillCard(
            skillImage: SkillImages.dart,
            subSkillText: SkillsTexts.dartSkills,
            skillColor: const Color.fromRGBO(0,210,184, 1),
          ),
        ],
      ),
    );
  }
}
