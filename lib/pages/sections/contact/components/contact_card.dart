import 'package:flutter/material.dart';
import 'package:meu_portifolio/pages/sections/contact/components/contact_button.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    super.key,
    required this.text,
    required this.image,
    });

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 240),
      margin: const EdgeInsets.only(top: 40, bottom: 40, right: 40),
      child: 
      Column(
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.headline6!.copyWith(
              color: const Color.fromARGB(255, 14,25, 44),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20,),
          ContactButton(image: image,),
        ],
      ),
    );
  }
}