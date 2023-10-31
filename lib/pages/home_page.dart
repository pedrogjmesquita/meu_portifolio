import 'package:flutter/material.dart';
import 'package:meu_portifolio/pages/components/menu_buttons.dart';
import 'package:meu_portifolio/pages/sections/about/about.dart';
import 'package:meu_portifolio/pages/sections/contact/contact.dart';
import 'package:meu_portifolio/pages/sections/experience/experience.dart';
import 'package:meu_portifolio/pages/sections/header/header.dart';
import 'package:meu_portifolio/pages/sections/projects/projects.dart';
import 'package:meu_portifolio/pages/sections/skills/skills.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final aboutKey = GlobalKey();
  final skillsKey = GlobalKey();
  final experienceKey = GlobalKey();
  final projectsKey = GlobalKey();
  final contactKey = GlobalKey();
  final homeKey = GlobalKey();

  Future scrollToHome() async{
    await Scrollable.ensureVisible(homeKey.currentContext!,
        duration: const Duration(milliseconds: 700));}

  Future scrollToAbout() async {
    await Scrollable.ensureVisible(aboutKey.currentContext!,
        duration: const Duration(milliseconds: 700));
  }

  Future scrollToSkills() async {
    await Scrollable.ensureVisible(skillsKey.currentContext!,
        duration: const Duration(milliseconds: 700));
  }

  Future scrollToExperience() async {
    await Scrollable.ensureVisible(experienceKey.currentContext!,
        duration: const Duration(milliseconds: 700));
  }

  Future scrollToProjects() async {
    await Scrollable.ensureVisible(projectsKey.currentContext!,
        duration: const Duration(milliseconds: 700));
  }

  Future scrollToContact() async {
    await Scrollable.ensureVisible(contactKey.currentContext!,
        duration: const Duration(milliseconds: 700));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: IconButton(
            icon: const Icon(Icons.home),
            onPressed: scrollToHome,
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromARGB(255,26,41,69), Color.fromARGB(255, 14,25, 44)] 
                )
            ),
          ),
          elevation: 30,
          shadowColor: Colors.black,
          centerTitle: true,
          actions: [
            MenuButtons(scrollFunction: scrollToAbout, buttonText: "Sobre"),
            MenuButtons(scrollFunction: scrollToSkills, buttonText: "Habilidades"),
            MenuButtons(scrollFunction: scrollToExperience, buttonText: "Experiência"),
            MenuButtons(scrollFunction: scrollToProjects, buttonText: "Projetos"),
            MenuButtons(scrollFunction: scrollToContact, buttonText: "Contato"),
          ],
          foregroundColor: const Color.fromRGBO(196, 219, 232, 1),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Header(key: homeKey),
              const SizedBox(height: 40),
              About(key: aboutKey),
              Skills(key: skillsKey),
              Experience(key: experienceKey),
              Projects(key: projectsKey),
              Contact(key: contactKey),
              const SizedBox(height: 200),
            ],
          ),
        ));
  }
}
