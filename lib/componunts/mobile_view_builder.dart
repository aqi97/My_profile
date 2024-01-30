
import 'package:flutter/material.dart';
import 'package:portfol_flutter_web/constant.dart';
class MobileViewBuilder extends StatelessWidget {
  final String titleText;
  final List<Widget> children;
  const MobileViewBuilder({
   
    required this.titleText,
    required this.children,
  }) : super();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kScreenPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(thickness: 3),
          SizedBox(height: 40),
          Text(
            titleText,
            style: Theme.of(context).textTheme.headline2,
            maxLines: 1,
          ),
          SizedBox(height: 40),
          ...children,
        ],
      ),
    );
  }
}