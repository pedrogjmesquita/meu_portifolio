import 'package:flutter/material.dart';
import 'package:meu_portifolio/pages/sections/header/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {


    return const Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            Header(),
          ],
        ),
      )
    );
  }
}
