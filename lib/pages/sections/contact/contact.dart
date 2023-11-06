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
      child:  const Column(
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
                    url: "https://mail.google.com/mail/?view=cm&fs=1&to=pedro.gjmesquita@gmail.com&su=Resposta%20do%20Portfolio"
                  ),
                  ContactCard(
                    text: "Veja meu perfil do GitHub",
                    image: "assets/images/github.png",
                    url: "https://github.com/pedrogjmesquita"
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ContactCard(
                    text: "Veja meu perfil no LinkedIn",
                    image: "assets/images/linkedin.png",
                    url: "https://www.linkedin.com/in/pedro-mesquita-917252258/"
                  ),
                  ContactCard(
                    text: "Baixe o meu currículo",
                    image: "assets/images/cv.png",
                    url: "https://drive.google.com/uc?export=download&id=1mV8V9jcMga9anqBTT4veUKtpu0f6UVv0"
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
