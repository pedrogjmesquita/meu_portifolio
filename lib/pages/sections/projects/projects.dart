import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:meu_portifolio/pages/components/section_title.dart';
import 'package:meu_portifolio/pages/sections/projects/components/projects_card.dart';
import 'package:meu_portifolio/pages/sections/projects/components/projects_texts.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 40),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          const SectionTitle(title: ProjectsTexts.title),
          FlutterCarousel(
              items: const [
                ProjectsCard(
                  projectDescription: ProjectsTexts.descriptionBIPY,
                  projectImage: "assets/images/bipy.png",
                  projectTitle: ProjectsTexts.titleBIPY,
                  projectLink: "https://github.com/JoaoVitorBranco/BIPy",
                ),
                ProjectsCard(
                  projectDescription: ProjectsTexts.descriptionRadioJava,
                  projectImage: "assets/images/radioJava.png",
                  projectTitle: ProjectsTexts.titleRadioJava,
                  projectLink:
                      "https://github.com/pedrogjmesquita/RadioJavaClientServer",
                ),
              ],
              options: CarouselOptions(
                height: 500,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 6),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
              ))
        ],
      ),
    );
  }
}
