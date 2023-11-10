import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:meu_portifolio/breakpoints.dart';
import 'package:meu_portifolio/pages/components/section_title.dart';
import 'package:meu_portifolio/pages/sections/projects/components/projects_card.dart';
import 'package:meu_portifolio/pages/sections/projects/components/projects_texts.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double maxDefinedWidth = (constraints.maxWidth > tabletBreakpoint
          ? 1100
          : (constraints.maxWidth > mobileBreakpoint)
              ? 700
              : 450);

      return Container(
        margin: const EdgeInsets.symmetric(vertical: 40),
        constraints: BoxConstraints(maxWidth: maxDefinedWidth),
        child: Column(
          children: [
            const SectionTitle(title: ProjectsTexts.title),
            FlutterCarousel(
                items: [
                  ProjectsCard(
                    projectDescription: ProjectsTexts.descriptionBIPY,
                    projectImage: "assets/images/bipy.png",
                    projectTitle: ProjectsTexts.titleBIPY,
                    projectLink: "https://github.com/JoaoVitorBranco/BIPy",
                    maxDefinedWidth: maxDefinedWidth,
                  ),
                  ProjectsCard(
                    projectDescription: ProjectsTexts.descriptionRadioJava,
                    projectImage: "assets/images/radioJava.png",
                    projectTitle: ProjectsTexts.titleRadioJava,
                    projectLink:
                        "https://github.com/pedrogjmesquita/RadioJavaClientServer",
                    maxDefinedWidth: maxDefinedWidth,
                  ),
                ],
                options: CarouselOptions(
                  height: 500,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 6),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  slideIndicator: const CircularSlideIndicator(
                    indicatorBackgroundColor:
                        Color.fromARGB(127, 158, 158, 158),
                    currentIndicatorColor: Color.fromARGB(138, 33, 149, 243),
                  ),
                ))
          ],
        ),
      );
    });
  }
}
