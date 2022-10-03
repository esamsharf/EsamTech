import 'package:esam_sharf/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Project.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(KdefaultPadding),
      color: KsecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Spacer(),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          Spacer(),
          TextButton(
            onPressed: () {},
            child: Text(
              "Read More >>",
              style: TextStyle(color: KprimaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
