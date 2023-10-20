import 'package:flutter/material.dart';

class InfoContainer extends StatelessWidget {
  const InfoContainer({
    super.key,
    required this.tamanho,
  });

  final Size tamanho;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:  BoxConstraints( maxHeight: tamanho.height * 0.7, maxWidth: 1100),
      width: double.infinity,
      margin: const EdgeInsets.only(top: 100),
      padding: const EdgeInsets.only(left:100),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey.withAlpha(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
          "Olá, bem vindo ao meu portifolio!",
          style: Theme.of(context)
            .textTheme
            .headlineMedium!
            .copyWith(color: Colors.white),
          ),
          Text(
            "Pedro\nMesquita",
            style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: Colors.white, height: 1.5, fontSize: 100, fontWeight: FontWeight.bold),
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
  }
}