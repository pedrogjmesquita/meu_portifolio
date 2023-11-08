import 'package:flutter/material.dart';
import 'package:meu_portifolio/breakpoints.dart';
import 'package:meu_portifolio/pages/components/section_title.dart';
import 'package:meu_portifolio/pages/sections/experience/components/experience_card.dart';
import 'package:meu_portifolio/pages/sections/experience/components/experience_images.dart';
import 'package:meu_portifolio/pages/sections/experience/components/experience_texts.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double maxDefinedWidth = (constraints.maxWidth > tabletBreakpoint
          ? 1100
          : (constraints.maxWidth > mobileBreakpoint)
              ? 700
              : 450);
      return Container(
        constraints: BoxConstraints(maxWidth: maxDefinedWidth),
        margin: const EdgeInsets.symmetric(vertical: 40),
        child: Column(
          children: [
            const SectionTitle(title: ExperienceTexts.title),
            Wrap(
              children: [
                ExperienceCard(
                  experienceImage: ExperienceImages.monitoria,
                  experienceText: ExperienceTexts.experienceMonitoria,
                  maxDefinedWidth: maxDefinedWidth,
                ),
                ExperienceCard(
                  experienceImage: ExperienceImages.nsee,
                  experienceText: ExperienceTexts.experienceDataScience,
                  maxDefinedWidth: maxDefinedWidth,
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
