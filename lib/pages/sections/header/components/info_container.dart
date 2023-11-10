import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:meu_portifolio/breakpoints.dart';

class InfoContainer extends StatelessWidget {
  const InfoContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return constraints.maxWidth > tabletBreakpoint
          ? Container(
              constraints: const BoxConstraints(maxWidth: 1100),
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 100),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey.withOpacity(0.3),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Olá, bem vindo ao meu portfolio!",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    "Pedro\nMesquita",
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: Colors.white,
                        fontSize: 100,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Estudante de Engenharia\n da Computação",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: Colors.white),
                  )
                ],
              ),
            )
          : Container(
              constraints: const BoxConstraints(maxWidth: 700),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey.withOpacity(0.3),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Olá, bem vindo ao meu portfolio!",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    "Pedro\nMesquita",
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: Colors.white,
                        fontSize: 760,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Estudante de Engenharia\n da Computação",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: Colors.white),
                  )
                ],
              ),
            );
    });
  }
}
