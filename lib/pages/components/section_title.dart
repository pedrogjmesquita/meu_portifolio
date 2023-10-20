import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 5,
          height: 70,
          color: Colors.black,
          margin: const EdgeInsets.only(right: 20),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
              color: Colors.black, fontWeight: FontWeight.bold, height: 2),
        ),
      ],
    );
  }
}
