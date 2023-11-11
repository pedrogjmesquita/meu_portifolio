import 'package:flutter/material.dart';

class InfoContainerMobile extends StatelessWidget {
  const InfoContainerMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      constraints: const BoxConstraints(maxWidth: 340),
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
                .headlineSmall!
                .copyWith(color: Colors.white),
          ),
          Text(
            "Pedro\nMesquita",
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold),
          ),
          Text(
            "Estudante de Engenharia\n da Computação",
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }
}
