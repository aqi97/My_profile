import 'package:flutter/material.dart';
import 'package:portfol_flutter_web/constant.dart';

class DesktopViewBuilder extends StatelessWidget {
  final String titleText;
  final List<Widget> children;
  const DesktopViewBuilder({
    required this.titleText,
    required this.children,
  }) : super();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kScreenPadding,
      width: kInitWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(titleText, style: Theme.of(context).textTheme.headline2),
          ...children,
        ],
      ),
    );
  }
}