import 'package:flutter/material.dart';
import 'package:portfol_flutter_web/constant.dart';

class ProjectItem {
  final String title;
  final String description;
  final String image;
  final List<String> technologies;

  ProjectItem({
    required this.title,
    required this.description,
    required this.image,
    required this.technologies,
  });
}

final KprojectItems = [
  ProjectItem(
    title: 'flutter',
    description: 'This project is about flutter web and mobile app',
    image: 'images/project_1.png',
    technologies: ['Flutter', 'Dart', 'IOS'],
  ),
  ProjectItem(
    title: 'IOS',
    description: 'This project is about flutter web and mobile app',
    image: 'images/project_2.png',
    technologies: ['Flutter', 'Dart', 'IOS'],
  ),
  ProjectItem(
    title: 'IOS',
    description: 'This project is about flutter web and mobile app',
    image: 'images/project_3.png',
    technologies: ['Flutter', 'Dart', 'IOS'],
  )
];

class ProjectView extends StatelessWidget {
  const ProjectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MediaQuery.of(context).size.width < 850
          ? ProjectMobileView()
          : ProjectDesktopView(),
    );
  }
}

class ProjectMobileView extends StatelessWidget {
  const ProjectMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.symmetric(horizontal: 20.0),
      width: kInitWidth,
      child: Column(children: [
        Divider(thickness: 2, color: Colors.black),
        Text("Project",
            style: TextStyle(
                fontSize: 30, color: Colors.black, fontFamily: 'Montserrat')),
        // SizedBox(height: 5),
        for (final item in KprojectItems) ProjectItemBody(item: item),
      ]),
    );
  }
}

class ProjectDesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kScreenPadding,
      width: kInitWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Projects', style: Theme.of(context).textTheme.headline2),
          SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (final item in KprojectItems)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ProjectItemBody(item: item),
                  ),
                )
            ],
          ),
          SizedBox(height: 70),
        ],
      ),
    );
  }
}

class ProjectItemBody extends StatelessWidget {
  const ProjectItemBody({
    super.key,
    required this.item,
  });

  final ProjectItem item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(item.image),
        SizedBox(height: 15),
        Text(
          item.title,
          style: Theme.of(context).textTheme.headline4,
        ),
        SizedBox(height: 10),
        Text(item.description, style: TextStyle(fontSize: 17)),
        SizedBox(height: 10),
        Row(
          children: [
            for (final tech in item.technologies)
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Chip(label: Text(tech)),
              )
          ],
        ),
        SizedBox(height: 50),
      ],
    );
  }
}
