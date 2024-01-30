import 'package:flutter/material.dart';
import 'package:portfol_flutter_web/blog/blog_card.dart';
import 'package:portfol_flutter_web/componunts/desktop_view_builder.dart';

class BlogView extends StatelessWidget {
  const BlogView({Key? key}) : super(key: key);
  
static const String title = '/blog';
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  MediaQuery.of(context).size.width < 850
            ? BlogMobileView()
            : BlogDesktopView(),
    );
      }

}
 class BlogDesktopView extends StatelessWidget {
  const BlogDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return DesktopViewBuilder(
      titleText: 'Blog', 
    children: [
      Row(
        children: [for( var i = 0; i < 2; i++) Expanded(
          child: BlogCard(isMobile: false,)
          )]
      )
    ]
    );
  }
}
 class BlogMobileView extends StatelessWidget {
  const BlogMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return DesktopViewBuilder(
      titleText: 'Blog', 
    children: [
      Row(
        children: [for( var i = 0; i < 2; i++) Expanded(
          child: BlogCard(isMobile: true,)
          )]
      )
    ]
    );
  }
}

