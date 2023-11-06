import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsCard extends StatelessWidget {
  const ProjectsCard(
      {super.key,
      required this.projectDescription,
      required this.projectImage,
      required this.projectTitle,
      required this.projectLink
      });

  final String projectDescription;
  final String projectImage;
  final String projectTitle;
  final String projectLink;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(projectImage), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
        Positioned(
            bottom: 20,
            left: 20,
            child: Container(
                constraints: const BoxConstraints(maxWidth: 500),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(20),
                child: Text(projectDescription))),
        Positioned(
            top: 20,
            left: 20,
            child: InkWell(
              onTap: () => launchUrl(Uri.parse(projectLink)),
              child: Container(
                  constraints: const BoxConstraints(maxWidth: 500),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Text(projectTitle)),
            )),
      ],
    );
  }
}
