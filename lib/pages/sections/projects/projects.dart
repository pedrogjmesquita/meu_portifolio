import 'package:flutter/material.dart';
import 'package:meu_portifolio/pages/components/section_title.dart';
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
          Container(
            width: 800,
            height: 800,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(colors: [Color.fromARGB(255,26,41,69), Color.fromARGB(255, 14,25, 44)])
            ),
            child: const Center(
              child: Text("Vitrine de Projetos", style: TextStyle(color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold),),
          ),
          )
        ],
      ),
    );
  }
}

