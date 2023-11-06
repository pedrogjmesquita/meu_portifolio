import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class ContactButton extends StatelessWidget {
  const ContactButton({super.key, required this.image, required this.url});

  final String url;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Link(
      uri: Uri.parse(url),
      target: LinkTarget.blank,
      builder: (context, followLink) => IconButton(
        onPressed: followLink,
        icon: Image.asset(image),
        iconSize: 100,
      ),
    );
  }
}
