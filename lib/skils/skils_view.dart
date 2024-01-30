import 'package:flutter/material.dart';
import 'package:portfol_flutter_web/constant.dart';
import 'package:portfol_flutter_web/skils/outline_skill_view.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: MediaQuery.of(context).size.width < 850
              ? SkillMobileView()
              : SkillDesktopView(),
        ),
      ],
    ));
  }
}

final skills = [
  'Flutter',
  'Swift',
  'HTML/CSS',
  'JAVA',
  'C#',
  'Agile',
  'Scrum',
  'Python',
];

class ColourAssets {
  static const Color red = Color.fromRGBO(255, 87, 87, 1);
  static const Color blue = Color.fromRGBO(82, 113, 255, 1);
  static const Color green = Color.fromRGBO(97, 242, 162, 1);
  static const Color yellow = Color.fromRGBO(255, 222, 89, 1);

  static const List<Color> all = [red, blue, green, yellow];
}

Widget SkillDesktopView() {
  return Container(
    padding: kScreenPadding,
    width: kInitWidth,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Skills',
        ),
        SizedBox(height: 20),
        for (var rowIndex = 0; rowIndex < skills.length / 4; rowIndex++) ...[
          Row(
            children: [
              for (var index = 0; index < skills.length / 2; index++)
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: index != 0 ? 8.0 : 0),
                    child: OutlineSkillsContainer(
                      index: index,
                      rowIndex: rowIndex,
                      isMobile: true,
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: 10)
        ]
      ],
    ),
  );
}

Widget SkillMobileView() {
  return Container(
    padding: kScreenPadding,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(thickness: 3),
        SizedBox(height: 50),
        Text(
          'Skills',
        ),
        SizedBox(height: 50),
        for (var index = 0; index < skills.length; index++) ...[
          OutlineSkillsContainer(
            index: index,
            isMobile: true,
            rowIndex: 0,
          ),
          SizedBox(height: 10)
        ]
      ],
    ),
  );
}
