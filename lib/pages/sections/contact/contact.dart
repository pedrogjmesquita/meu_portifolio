import 'package:flutter/material.dart';
import 'package:meu_portifolio/pages/components/section_title.dart';
import 'package:meu_portifolio/pages/sections/contact/components/contact_card.dart';
import 'package:meu_portifolio/pages/sections/contact/components/contact_texts.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1100),
      child: const Column(
        children: [
          SectionTitle(title: ContactTexts.title),
          Wrap(
            runAlignment: WrapAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ContactCard(
                    text: "Me mande um e-mail",
                    image: "assets/images/gmail.png",
                  ),
                  ContactCard(
                    text: "Visite minha página do GitHub",
                    image: "assets/images/github.png",
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ContactCard(
                    text: "Veja meu perfil no LinkedIn",
                    image: "assets/images/linkedin.png",
                  ),
                  ContactCard(
                    text: "Baixe o meu currículo",
                    image: "assets/images/cv.png",
                  ),
                ],
              ),
            ],
          )
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: [
          //     Wrap(
          //       runAlignment: WrapAlignment.start,
          //       children: [
          //         ContactCard(
          //           text: "Me mande um e-mail",
          //           image: "assets/images/gmail.png",
          //         ),
          //         ContactCard(
          //           text: "Visite minha página do GitHub",
          //           image: "assets/images/github.png",
          //         ),
          //       ],
          //     ),
          //     Wrap(
          //       runAlignment: WrapAlignment.start,
          //       children: [
          //         ContactCard(
          //           text: "Veja meu perfil no LinkedIn",
          //           image: "assets/images/linkedin.png",
          //         ),
          //         ContactCard(
          //           text: "Baixe o meu currículo",
          //           image: "assets/images/cv.png",
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
