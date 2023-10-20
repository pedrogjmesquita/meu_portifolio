import 'package:flutter/material.dart';

import 'components/info_container.dart';

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
      padding: const EdgeInsets.only(left:20),
      child: Container(
        width: 1100,
        margin: const EdgeInsets.only(top: 20),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 50,
              right: 50, 
              child: InfoContainer(tamanho: tamanho)
              ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                constraints: const BoxConstraints(maxWidth: 639, maxHeight: 800),
                child: Image.asset("assets/images/foto_de_perfil_removebg.png"),
              )
            ),
          ],
        ),
      ),
    );
  }
}
