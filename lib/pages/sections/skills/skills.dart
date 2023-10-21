import 'package:flutter/material.dart';
import 'package:meu_portifolio/pages/components/section_title.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      child: const Column(
        children: [
          SectionTitle(title: "Habilidades")
        ],
      ),
    );
  }
}