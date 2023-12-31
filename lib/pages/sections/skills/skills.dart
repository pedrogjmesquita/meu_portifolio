import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:meu_portifolio/breakpoints.dart';
import 'package:meu_portifolio/pages/components/section_title.dart';
import 'package:meu_portifolio/pages/sections/skills/components/skills_card.dart';
import 'package:meu_portifolio/pages/sections/skills/components/skills_images.dart';
import 'package:meu_portifolio/pages/sections/skills/components/skills_texts.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return constraints.maxWidth > tabletBreakpoint
          ? Container(
              constraints: const BoxConstraints(maxWidth: 1100),
              margin: const EdgeInsets.symmetric(vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SectionTitle(title: SkillsTexts.title),
                  FlutterCarousel(
                    items: [
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
                        skillColor: const Color.fromRGBO(93, 107, 193, 1),
                      ),
                      SkillCard(
                        skillImage: SkillImages.dart,
                        subSkillText: SkillsTexts.dartSkills,
                        skillColor: const Color.fromRGBO(0, 210, 184, 1),
                      ),
                    ],
                    options: CarouselOptions(
                      height: 400,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 6),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      slideIndicator: const CircularSlideIndicator(
                        indicatorBackgroundColor:
                            Color.fromARGB(127, 158, 158, 158),
                        currentIndicatorColor:
                            Color.fromARGB(138, 33, 149, 243),
                      ),
                    ),
                  ),
                ],
              ))
          : constraints.maxWidth > mobileBreakpoint
              ? Container(
                  constraints: const BoxConstraints(maxWidth: 700),
                  margin: const EdgeInsets.symmetric(vertical: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SectionTitle(title: SkillsTexts.title),
                      FlutterCarousel(
                        items: [
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
                            skillColor: const Color.fromRGBO(93, 107, 193, 1),
                          ),
                          SkillCard(
                            skillImage: SkillImages.dart,
                            subSkillText: SkillsTexts.dartSkills,
                            skillColor: const Color.fromRGBO(0, 210, 184, 1),
                          ),
                        ],
                        options: CarouselOptions(
                          height: 500,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 6),
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          slideIndicator: const CircularSlideIndicator(
                            indicatorBackgroundColor:
                                Color.fromARGB(127, 158, 158, 158),
                            currentIndicatorColor:
                                Color.fromARGB(138, 33, 149, 243),
                          ),
                        ),
                      ),
                    ],
                  ))
              : Container(
                  constraints: const BoxConstraints(maxWidth: 300),
                  margin: const EdgeInsets.symmetric(vertical: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SectionTitle(
                        title: SkillsTexts.title,
                        fontSize: 45,
                      ),
                      FlutterCarousel(
                        items: [
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
                            skillColor: const Color.fromRGBO(93, 107, 193, 1),
                          ),
                          SkillCard(
                            skillImage: SkillImages.dart,
                            subSkillText: SkillsTexts.dartSkills,
                            skillColor: const Color.fromRGBO(0, 210, 184, 1),
                          ),
                        ],
                        options: CarouselOptions(
                          height: 800,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 6),
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          slideIndicator: const CircularSlideIndicator(
                            indicatorBackgroundColor:
                                Color.fromARGB(127, 158, 158, 158),
                            currentIndicatorColor:
                                Color.fromARGB(138, 33, 149, 243),
                          ),
                        ),
                      ),
                    ],
                  ));
    });
  }
}
