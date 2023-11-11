// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:meu_portifolio/breakpoints.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({
    super.key,
    required this.experienceImage,
    required this.experienceText1,
    required this.experienceText2,
  });

  final String experienceImage;
  final String experienceText1;
  final String experienceText2;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      return constraints.maxWidth > mobileBreakpoint
          ? Container(
              margin: const EdgeInsets.symmetric(vertical: 40),
              child: Row(
                children: [
                  Container(
                    constraints:
                        const BoxConstraints(maxWidth: 128, maxHeight: 128),
                    margin: const EdgeInsets.only(right: 50),
                    child: Image.asset(experienceImage),
                  ),
                  Expanded(
                    child: Text(experienceText1+experienceText2,
                        style: const TextStyle(
                            fontWeight: FontWeight.w200,
                            color: Color.fromARGB(255, 10, 9, 9),
                            height: 2,
                            fontSize: 20)),
                  ),

                ],
              ))
          : Container(
              margin: const EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: [
                  Text(experienceText1,
                      style: const TextStyle(
                          fontWeight: FontWeight.w200,
                          color: Color.fromARGB(255, 10, 9, 9),
                          height: 2,
                          fontSize: 20)),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 160),
                    margin: const EdgeInsets.only(right: 50),
                    child: Image.asset(experienceImage),
                  ),
                  Text(experienceText2,
                      style: const TextStyle(
                          fontWeight: FontWeight.w200,
                          color: Color.fromARGB(255, 10, 9, 9),
                          height: 2,
                          fontSize: 20)),
                ],
              ));
    }));
  }
}
