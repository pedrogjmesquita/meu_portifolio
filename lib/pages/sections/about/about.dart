import 'package:flutter/material.dart';
import 'package:meu_portifolio/breakpoints.dart';
import 'package:meu_portifolio/pages/components/section_title.dart';
import 'package:meu_portifolio/pages/sections/about/components/about_card.dart';
import 'package:meu_portifolio/pages/sections/about/components/about_texts.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double maxDefinedWidth = (constraints.maxWidth > tabletBreakpoint
          ? 1100
          : (constraints.maxWidth > mobileBreakpoint)
              ? 700
              : 400);
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 40),
        constraints: BoxConstraints(maxWidth: maxDefinedWidth),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        width: double.infinity,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionTitle(title: AboutTexts.title),
            AboutCard(),
          ],
        ),
      );
    });
  }
}
