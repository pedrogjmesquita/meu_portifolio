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
      padding: EdgeInsets.only(left:20),
      child: Container(
        width: 1200,
        margin: const EdgeInsets.only(top: 20),
        child: Stack(
          children: [
            Positioned(
              top: 1,
              left: 1,
              child: InfoContainer(tamanho: tamanho)
              ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                constraints: BoxConstraints(maxWidth: 639, maxHeight: 860),
                child: Image.asset("assets/images/foto_de_perfil_removebg.png"),
              )
            ),
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
      constraints:  BoxConstraints( maxHeight: tamanho.height * 0.7, maxWidth: 1100),
      width: double.infinity,
      margin: const EdgeInsets.only(top: 100),
      padding: const EdgeInsets.only(left:100),
      color: Colors.white.withAlpha(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
        "Pedro G J Mesquita",
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