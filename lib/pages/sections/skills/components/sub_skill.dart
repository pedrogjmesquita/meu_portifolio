import 'package:flutter/material.dart';

class SubSkill extends StatelessWidget {
  const SubSkill({
    super.key,
    required this.subSkillText,
    required this.skillColor,
  });

  final String subSkillText;
  final Color skillColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 256, maxHeight: 80),
      width: 250,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: const Border.fromBorderSide(
          BorderSide(
            color: Color.fromARGB(255, 0, 0, 0),
            width: 3,
          ),
        ),
        color: skillColor,
      ),
      // padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      child: Center(
        child: Text(
          subSkillText,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
