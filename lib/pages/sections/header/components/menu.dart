import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      constraints: const BoxConstraints(maxWidth: 1100),
      height: 100,
      color: Colors.white,

    );
  }
}
