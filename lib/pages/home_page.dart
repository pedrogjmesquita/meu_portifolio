import 'package:flutter/material.dart';
import 'package:meu_portifolio/pages/sections/about/about.dart';
import 'package:meu_portifolio/pages/components/menu.dart';
import 'package:meu_portifolio/pages/sections/header/header.dart';
import 'package:meu_portifolio/pages/sections/skills/skills.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  
  final aboutKey = GlobalKey();
  final skillsKey = GlobalKey();

  Future scrollToAbout() async {
    await Scrollable.ensureVisible(aboutKey.currentContext!
        , duration: const Duration(milliseconds: 1500));
  }

  Future scrollToSkills() async {
    await Scrollable.ensureVisible(skillsKey.currentContext!
        , duration: const Duration(milliseconds: 1500));
  }

  Future scrollToExperience() async {
    await Scrollable.ensureVisible(aboutKey.currentContext!
        , duration: const Duration(milliseconds: 1500));
  }

  Future scrollToProjects() async {
    await Scrollable.ensureVisible(aboutKey.currentContext!
        , duration: const Duration(milliseconds: 1500));
  }

  Future scrollToContact() async {
    await Scrollable.ensureVisible(aboutKey.currentContext!
        , duration: const Duration(milliseconds: 1500));
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                const Positioned(
                  child: Header(),
                  ),
                Positioned(
                  bottom: 10,
                  child: Menu(
                    scrollToAbout: scrollToAbout,
                    scrollToSkills: scrollToSkills,
                    scrollToExperience: scrollToExperience,
                    scrollToProjects: scrollToProjects,
                    scrollToContact: scrollToContact,), 
                  )
              ]
              ),
            const SizedBox(height: 40),
            About(key: aboutKey),
            Skills(key: skillsKey),

          ],
        ),
      )
    );
  }
}

