import 'package:flutter/material.dart';

class BlogCard extends StatelessWidget {
  const BlogCard({
    super.key,
    required this.isMobile,
  });
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(color: Colors.cyan,
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 8,
            vertical:  isMobile  ? 10 : 40,
          ),
          child: Text('Meet Sheikh Abu Mohamed: Passionate Software Developer', style: const TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column( 
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Text('01-03-2024'),
            SizedBox(height: 15),
            Text('Hello, world! Today, we have the pleasure of introducing Sheikh Abu Mohamed, a dedicated and talented software developer who is making waves in the world of technology. ', maxLines: 4,
             style: TextStyle(fontSize: 15,),),
            ],),
          )
         

        ],
      ),
    );
  }
}