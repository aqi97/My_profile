import 'package:flutter/material.dart';
import 'package:portfol_flutter_web/constant.dart';
import 'package:portfol_flutter_web/header_view/header_body_view.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({
    Key? key,
  }) : super();

  @override
  Widget build(BuildContext context) {
    final Widget = MediaQuery.of(context).size.width;
    return Container(
        child: MediaQuery.of(context).size.width < 850
            ? HeaderMobileView()
            : HeaderDesktopView());
  }
}

class HeaderDesktopView extends StatelessWidget {
  const HeaderDesktopView();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isSmall = width < 950;
    final imageWidth = width * 0.47;
    return Container(
      height: 864,
      width: kInitWidth,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            Expanded(
              child: HeaderBody(isMobile: true),
            ),
            Image.asset(
              'images/aqi.png',
              height: isSmall ? imageWidth : 500,
            )
          ],
        ),
      ),
    );
  }
}

class HeaderMobileView extends StatelessWidget {
  const HeaderMobileView();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.9,
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: [
          Expanded(child: Image.asset('images/aqi.png')),
          HeaderBody(isMobile: true),
        ],
      ),
    );
  }
}
