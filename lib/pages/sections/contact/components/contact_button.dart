import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {
  const ContactButton({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => {},
      icon: Image.asset(image),
      iconSize: 100,

    );
  }
}
