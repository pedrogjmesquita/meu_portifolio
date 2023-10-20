import 'package:flutter/material.dart';

class AboutText extends StatelessWidget {
  const AboutText({
    super.key,
    required this.texto
    });

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Text(
        texto,
        style: const TextStyle(
          fontWeight: FontWeight.w200, color: Colors.black, height: 2, fontSize: 20
        ),
      ),
    );
  }
}