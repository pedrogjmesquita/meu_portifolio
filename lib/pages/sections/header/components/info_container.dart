import 'dart:ui';

import 'package:flutter/material.dart';

class InfoContainer extends StatelessWidget {
  const InfoContainer({
    super.key,
    required this.tamanho,
  });

  final Size tamanho;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          constraints: const BoxConstraints(maxHeight: 650, maxWidth: 1100),
          width: double.infinity,
          margin: const EdgeInsets.only(top: 100),
          padding: const EdgeInsets.only(left: 100),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.transparent,
          ),
          child: Container(
            constraints: const BoxConstraints(maxWidth: 500, maxHeight: 650),
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
          ),
        ),
      ),
    );
  }
}
