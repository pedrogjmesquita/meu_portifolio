import 'package:flutter/material.dart';
import 'package:meu_portifolio/pages/components/section_title.dart';
import 'package:meu_portifolio/pages/sections/experience/components/experience_card.dart';
import 'package:meu_portifolio/pages/sections/experience/components/experience_texts.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 40),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: const Column(
        children: [
          SectionTitle(title: ExperienceTexts.title),
          Wrap(
            children: [
              ExperienceCard(
                experienceImage: "assets/images/blackboard.png", 
                experienceText: ExperienceTexts.experienceMonitoria),
                ExperienceCard(
                experienceImage: "assets/images/datascience.png", 
                experienceText: ExperienceTexts.experienceDataScience),
            ],
          ),
        ],
      ),
    );
  }
}