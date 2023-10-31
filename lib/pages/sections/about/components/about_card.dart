import 'package:flutter/material.dart';
import 'package:meu_portifolio/pages/sections/about/components/about_images.dart';
import 'package:meu_portifolio/pages/sections/about/components/about_text.dart';
import 'package:meu_portifolio/pages/sections/about/components/about_texts.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: AboutText(
                  texto:AboutTexts.text1
                  ),
              ),
              Container(
                constraints: const BoxConstraints(maxWidth: 256, maxHeight: 256),
                child: Image.asset(AboutImages.pandasImage)
                ),
              const Expanded(
                child: AboutText(
                  texto:AboutTexts.text2
                ),
              )
            ],
          );
  }
}