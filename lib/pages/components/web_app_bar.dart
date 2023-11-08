import 'package:flutter/material.dart';
import 'package:meu_portifolio/pages/components/menu_buttons.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({
    super.key,
    required this.scrollToHome,
    required this.scrollToAbout,
    required this.scrollToSkills,
    required this.scrollToExperience,
    required this.scrollToProjects,
    required this.scrollToContact,
  });

  final VoidCallback scrollToHome;
  final VoidCallback scrollToAbout;
  final VoidCallback scrollToSkills;
  final VoidCallback scrollToExperience;
  final VoidCallback scrollToProjects;
  final VoidCallback scrollToContact;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: scrollToHome,
          ),
          MenuButtons(scrollFunction: scrollToAbout, buttonText: "Sobre"),
          MenuButtons(
              scrollFunction: scrollToSkills, buttonText: "Habilidades"),
          MenuButtons(
              scrollFunction: scrollToExperience, buttonText: "Experiência"),
          MenuButtons(scrollFunction: scrollToProjects, buttonText: "Projetos"),
          MenuButtons(scrollFunction: scrollToContact, buttonText: "Contato"),
        ],
      ),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 26, 41, 69),
          Color.fromARGB(255, 14, 25, 44)
        ])),
      ),
      elevation: 30,
      shadowColor: Colors.black,
      foregroundColor: const Color.fromRGBO(196, 219, 232, 1),
    );
  }
}
