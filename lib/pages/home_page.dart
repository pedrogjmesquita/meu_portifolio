import 'package:flutter/material.dart';
import 'package:meu_portifolio/breakpoints.dart';
import 'package:meu_portifolio/pages/components/menu_buttons.dart';
import 'package:meu_portifolio/pages/components/tablet_app_bar.dart';
import 'package:meu_portifolio/pages/components/web_app_bar.dart';
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

  Future scrollToHome() async {
    await Scrollable.ensureVisible(homeKey.currentContext!,
        duration: const Duration(milliseconds: 700));
  }

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
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          appBar: constraints.maxWidth > tabletBreakpoint
              ? PreferredSize(
                  preferredSize: const Size(double.infinity, 60),
                  child: WebAppBar(
                    scrollToHome: scrollToHome,
                    scrollToAbout: scrollToAbout,
                    scrollToSkills: scrollToSkills,
                    scrollToExperience: scrollToExperience,
                    scrollToProjects: scrollToProjects,
                    scrollToContact: scrollToContact,
                  ),
                )
              : constraints.maxWidth > mobileBreakpoint
                  ? PreferredSize(
                      preferredSize: const Size(double.infinity, 56),
                      child: TabletAppBar(
                        scrollToHome: scrollToHome,
                        scrollToAbout: scrollToAbout,
                        scrollToSkills: scrollToSkills,
                        scrollToExperience: scrollToExperience,
                        scrollToProjects: scrollToProjects,
                        scrollToContact: scrollToContact,
                      ))
                  : null,
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
    });
  }
}
