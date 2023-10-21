import 'package:flutter/material.dart';
import 'package:meu_portifolio/pages/components/section_title.dart';
import 'package:meu_portifolio/pages/sections/about/components/about_text.dart';
import 'package:meu_portifolio/pages/sections/about/components/about_texts.dart';
import 'package:meu_portifolio/pages/sections/about/components/pandas_card.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 40),
      constraints: const BoxConstraints(maxWidth: 1100),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        ),
      width: double.infinity,
      child:  const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(title: AboutTexts.title),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: AboutText(
                  texto:AboutTexts.text1
                  ),
              ),
              PandasCard(),
              Expanded(
                child: AboutText(
                  texto:AboutTexts.text2
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
