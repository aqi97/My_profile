import 'package:flutter/material.dart';
import 'package:portfol_flutter_web/skils/skils_view.dart';


class ExperienceContainer extends StatelessWidget {
  const ExperienceContainer({
    required Key key,
    required this.experience,
    required this.index,
  }) : super();

  final ExperienceInfo experience;
  final int index;

  @override
  Widget build(BuildContext context) {
    final colors = ColourAssets.all;
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color: colors.elementAt(index % colors.length),
        ),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            experience.company,
            style: textStyle(isBold: true, isGrey: true),
          ),
          SizedBox(height: 10),
          Text(
            experience.timeline,
            style: textStyle(isGrey: true, isBold: true),
          ),
          SizedBox(height: 10),
          for (final item in experience.descriptions)
            Text(
              item,
              style: textStyle(isBold: true, isGrey: true),
            )
        ],
      ),
    );
  }
}

TextStyle textStyle({required bool isBold, required bool isGrey}) {
  return TextStyle(
    fontSize: 20,
    height: 1.3,
    fontWeight: isBold ?? false ? FontWeight.bold : FontWeight.normal,
    color: isGrey ?? false ? Colors.grey : Colors.black,
  );
}

class ExperienceInfo {
  final String company;
  final String timeline;
  final List<String> descriptions;
  ExperienceInfo({
    required this.company,
    required this.timeline,
    required this.descriptions,
  });
}

final experiences = [
  ExperienceInfo(
    company: 'Software Developer @ Smartq (Start Up)',
    timeline: 'October 2022 - still working',
    descriptions: [
      '- Created the Food App for BtoB to 30,000 downloads',
      '- Maintained of the app',
      '- Worked in a team of 5 developers',
    ],
  ),
 ExperienceInfo(
    company: 'Software Developer @ Smartq (Start Up)',
    timeline: 'October 2022 - still working',
    descriptions: [
      '- Created the Food App for BtoB to 30,000 downloads',
      '- Maintained of the app',
      '- Worked in a team of 5 developers',
    ],
  ),
 ExperienceInfo(
    company: 'Software Developer @ Smartq (Start Up)',
    timeline: 'October 2022 - still working',
    descriptions: [
      '- Created the Food App for BtoB to 30,000 downloads',
      '- Maintained of the app',
      '- Worked in a team of 5 developers',
    ],
  ),
 ExperienceInfo(
    company: 'Software Developer @ Smartq (Start Up)',
    timeline: 'October 2022 - still working',
    descriptions: [
      '- Created the Food App for BtoB to 30,000 downloads',
      '- Maintained of the app',
      '- Worked in a team of 5 developers',
    ],
  ),
];