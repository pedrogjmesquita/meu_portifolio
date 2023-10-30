import 'package:flutter/material.dart';
import 'package:meu_portifolio/pages/components/menu_buttons.dart';

// ignore: must_be_immutable
class Menu extends StatelessWidget {
  Menu({
    super.key,
    required this.scrollToSkills,
    required this.scrollToAbout,
    required this.scrollToExperience,
    required this.scrollToProjects,
    required this.scrollToContact,
  });

  final VoidCallback scrollToAbout;
  final VoidCallback scrollToSkills;
  final VoidCallback scrollToExperience;
  final VoidCallback scrollToProjects;
  final VoidCallback scrollToContact;

  List<String> menuItems = [
    "Sobre",
    "Habilidades",
    "Experiências",
    "Projetos",
    "Contato"
  ];

  @override
  Widget build(BuildContext context) {
    List<MenuButtons> menuButtons = [
    MenuButtons(
      buttonText: "Sobre",
      scrollFunction: scrollToAbout,
    ),
    MenuButtons(
      buttonText: "Habilidades",
      scrollFunction: scrollToSkills,
    ),
    MenuButtons(
      buttonText: "Experiências",
      scrollFunction: scrollToExperience,
    ),
    MenuButtons(
      buttonText: "Projetos",
      scrollFunction: scrollToProjects,
    ),
    MenuButtons(
      buttonText: "Contato",
      scrollFunction: scrollToContact,
    ),
  ];

    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        constraints: const BoxConstraints(maxWidth: 1100),
        height: 100,
        decoration: BoxDecoration(
          color: Colors.grey.withAlpha(80),
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(20, -5),
              blurRadius: 4,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: menuItems
              .map(
                (item) => menuButtons[menuItems.indexOf(item)],
              )
              .toList(),
        ));
  }
}
