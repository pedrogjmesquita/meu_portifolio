import 'package:flutter/material.dart';

class MenuButtons extends StatelessWidget {
  const MenuButtons(
      {super.key, required this.scrollFunction, required this.buttonText});

  final VoidCallback scrollFunction;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        scrollFunction();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey.withAlpha(0),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(
        buttonText,
        style: Theme.of(context)
            .textTheme
            .headlineMedium!
            .copyWith(color: Colors.black),
      ),
    );
  }
}
