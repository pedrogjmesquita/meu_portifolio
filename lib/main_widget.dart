import 'package:flutter/material.dart';
import 'package:meu_portifolio/pages/home_page.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      title: 'Pedro G J Mesquita',
    );
  }
}