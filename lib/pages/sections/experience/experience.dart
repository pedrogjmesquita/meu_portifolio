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
      return constraints.maxWidth > tabletBreakpoint
          ? Container(
              constraints: const BoxConstraints(maxWidth: 1100),
              margin: const EdgeInsets.symmetric(vertical: 40),
              child: const Column(
                children: [
                  SectionTitle(
                    title: ExperienceTexts.title,
                  ),
                  Wrap(
                    children: [
                      ExperienceCard(
                        experienceImage: ExperienceImages.monitoria,
                        experienceText1: ExperienceTexts.experienceMonitoria1,
                        experienceText2: ExperienceTexts.experienceMonitoria2,
                      ),
                      ExperienceCard(
                        experienceImage: ExperienceImages.nsee,
                        experienceText1: ExperienceTexts.experienceDataScience1,
                        experienceText2: ExperienceTexts.experienceDataScience2,
                      ),
                    ],
                  ),
                ],
              ),
            )
          : constraints.maxWidth > mobileBreakpoint
              ? Container(
                  constraints: const BoxConstraints(maxWidth: 700),
                  margin: const EdgeInsets.symmetric(vertical: 40),
                  child: const Column(
                    children: [
                      SectionTitle(
                        title: ExperienceTexts.title,
                      ),
                      Wrap(
                        children: [
                          ExperienceCard(
                        experienceImage: ExperienceImages.monitoria,
                        experienceText1: ExperienceTexts.experienceMonitoria1,
                        experienceText2: ExperienceTexts.experienceMonitoria2,
                      ),
                      ExperienceCard(
                        experienceImage: ExperienceImages.nsee,
                        experienceText1: ExperienceTexts.experienceDataScience1,
                        experienceText2: ExperienceTexts.experienceDataScience2,
                      ),
                        ],
                      ),
                    ],
                  ),
                )
              : Container(
                  constraints: const BoxConstraints(maxWidth: 300),
                  margin: const EdgeInsets.symmetric(vertical: 40),
                  child: const Column(
                    children: [
                      SectionTitle(
                        title: ExperienceTexts.title,
                        fontSize: 45,
                      ),
                      Wrap(
                        children: [
                          ExperienceCard(
                        experienceImage: ExperienceImages.monitoria,
                        experienceText1: ExperienceTexts.experienceMonitoria1,
                        experienceText2: ExperienceTexts.experienceMonitoria2,
                      ),
                      ExperienceCard(
                        experienceImage: ExperienceImages.nsee,
                        experienceText1: ExperienceTexts.experienceDataScience1,
                        experienceText2: ExperienceTexts.experienceDataScience2,
                      ),
                        ],
                      ),
                    ],
                  ),
                );
    });
  }
}
