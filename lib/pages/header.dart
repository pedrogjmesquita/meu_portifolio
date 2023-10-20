import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    Size tamanho = MediaQuery.of(context).size;
    
    return Container(
      constraints: const BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/header.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        width: 1200,
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            InfoContainer(tamanho: tamanho),
          ],
        ),
      ),
    );
  }
}

class InfoContainer extends StatelessWidget {
  const InfoContainer({
    super.key,
    required this.tamanho,
  });

  final Size tamanho;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:  BoxConstraints( maxHeight: tamanho.height * 0.7, minWidth: tamanho.width * 0.7),
      margin: const EdgeInsets.only(top: 100),
      padding: const EdgeInsets.all(20),
      color: Colors.white.withAlpha(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
        "Olá, bem vindo ao meu portifolio!",
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .copyWith(color: Colors.white),
      ),
      const Text(
        "Pedro\nMesquita",
        style: TextStyle(
          fontSize: 100,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          height: 1.5,
        ),
      ),
      Text(
        "Estudante de Engenharia da Computação",
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