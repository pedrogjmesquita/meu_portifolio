import 'package:flutter/material.dart';

class PandasCard extends StatelessWidget {
  const PandasCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 256, maxHeight: 256),
      child: Image.asset("assets/images/pandas.png"),
    );
  }
}