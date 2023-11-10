import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.title, this.fontSize = 40});

  final double fontSize;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                width: 5,
                height: 35,
                color: const Color.fromRGBO(13, 24, 44, 1),
                margin: const EdgeInsets.only(right: 20),
              ),
              Container(
                width: 5,
                height: 35,
                color: const Color.fromRGBO(15, 89, 168, 1),
                margin: const EdgeInsets.only(right: 20),
              ),
            ],
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w700,
              color: const Color.fromRGBO(13, 24, 44, 1),
            ),
          ),
        ],
      ),
    );
  }
}
