import 'package:flutter/material.dart';
import 'package:meu_portifolio/breakpoints.dart';

import 'components/info_container.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return constraints.maxWidth > tabletBreakpoint
          ? Container(
              alignment: Alignment.center,
              constraints: const BoxConstraints(
                maxHeight: 900,
              ),
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                constraints: const BoxConstraints(maxWidth: 1100),
                margin: const EdgeInsets.only(top: 20),
                child: Stack(
                  children: [
                    const Positioned(top: 0, child: InfoContainer()),
                    Positioned(
                        bottom: 0,
                        right: -30,
                        child: Container(
                          constraints: const BoxConstraints(maxWidth: 600),
                          child: Image.asset(
                              "assets/images/foto_de_perfil_removebg.png"),
                        )),
                  ],
                ),
              ),
            )
          : Container(
              alignment: Alignment.center,
              constraints: const BoxConstraints(
                maxHeight: 800,
              ),
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                constraints: const BoxConstraints(maxWidth: 700),
                margin: const EdgeInsets.only(top: 20),
                child: Stack(
                  children: [
                    const Positioned(top: 50, child: InfoContainer()),
                    Positioned(
                        bottom: 0,
                        right: -0,
                        child: Container(
                          constraints: const BoxConstraints(maxWidth: 280),
                          child: Image.asset(
                              "assets/images/foto_de_perfil_removebg.png"),
                        )),
                  ],
                ),
              ),
            );
    });
  }
}
