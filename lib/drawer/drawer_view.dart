import 'package:flutter/material.dart';
import 'package:portfol_flutter_web/componunts/mobile_desktop_view_builder.dart';
import 'package:portfol_flutter_web/portfolio/portfolio_view.dart';
import 'package:provider/provider.dart';

class DrawerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MediaQuery.of(context).size.width < 850
      ? DrawerMobileView()
        : SizedBox(),
      
    );
    // return MobileDesktopViewBuilder(
    //   mobileView: DrawerMobileView(),
    //   desktopView: SizedBox(), showMobile: true,
    // );
  }
}

class DrawerMobileView extends StatelessWidget {
  const DrawerMobileView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigationItems = context.watch<List<NavigationItem>>();
    final scrollController = context.watch<ScrollController>();

    return Drawer(

      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Sheikh Abu Mohamed'),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Colors.blue],
                tileMode: TileMode.repeated,
              ),
            ),
          ),
          for (var item in navigationItems)
            ListTile(
              title: Text(item.text),
              onTap: () {
                scrollController.animateTo(
                  item.position,
                  duration: Duration(milliseconds: 700),
                  curve: Curves.easeInOut,
                );
                Navigator.pop(context);
              },
            ),
        ],
      ),
    );
  }
}