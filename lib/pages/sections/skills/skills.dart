import 'package:flutter/material.dart';
import 'package:meu_portifolio/pages/components/section_title.dart';
import 'package:meu_portifolio/pages/sections/skills/components/skill_card.dart';

class Skills extends StatelessWidget {
  Skills({super.key});

  final List<String> pythonSkills = [
    "Implementação de GUIs",
    "Bibliotecas de Machine Learning",
    "Processamento de Linguagem Natural",
    "Deep Learning e Redes Neurais",
    "Data Visualisation",
    "WebScraping",
  ];
  final List<String> javaSkills = [
    "Implementação de GUIs",
    "Conecção com Banco de Dados",
    "Arquiteura de Sockets",
    "Estudo de Estruturas de Dados",
    "Testes Unitários"
  ];
  final List<String> cSkils = [
    "Estudo de Estruturas de Dados",
    "Estudo de Algoritmos",
    "Cenexão com Banco de Dados"
  ];
  final List<String> dartSkills = [
    "Framework Flutter",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      margin: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: "Habilidades"),
          SkillCard(
            skillImage: "assets/images/python.png",
            subSkillText: pythonSkills,
            skillColor: const Color.fromRGBO(48, 105, 152, 1),
          ),
          SkillCard(
            skillImage: "assets/images/java.png",
            subSkillText: javaSkills,
            skillColor: const Color.fromRGBO(237, 139, 0, 1),
          ),
          SkillCard(
            skillImage: "assets/images/c.png",
            subSkillText: cSkils,
            skillColor: const Color.fromRGBO(93,107,193, 1),
          ),
          SkillCard(
            skillImage: "assets/images/dart.png",
            subSkillText: dartSkills,
            skillColor: const Color.fromRGBO(0,210,184, 1),
          ),
        ],
      ),
    );
  }
}
