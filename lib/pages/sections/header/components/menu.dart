import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({
    super.key,
  });

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<String> menuItems = [
    "Sobre",
    "Habilidades",
    "Experiências",
    "Projetos",
    "Contato"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        constraints: const BoxConstraints(maxWidth: 1100),
        height: 100,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(20, -5),
              blurRadius: 4,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: menuItems
              .map(
                (item) => ElevatedButton(
                  onPressed: () {
                    handleClick(item);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    item,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: Colors.black),
                  ),
                ),
              )
              .toList(),
        ));
  }

  void handleClick(String item) {
    switch (item) {
      case "Sobre":
        // TODO: Scrolar pra essa seção
        break;
      case "Habilidades":
        // TODO: Scrolar pra essa seção
        break;
      case "Experiências":
        // TODO: Scrolar pra essa seção
        break;
      case "Projetos":
        // TODO: Scrolar pra essa seção
        break;
      case "Contato":
        // TODO: Scrolar pra essa seção
        break;
      default:
    }
  }
}
