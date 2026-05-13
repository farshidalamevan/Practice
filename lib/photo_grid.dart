import 'package:flutter/material.dart';

class PhotoGrid extends StatelessWidget {
  const PhotoGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
        leading: Icon(Icons.browse_gallery_outlined),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Colors.black,
        ),
        backgroundColor: Colors.yellow,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 30,

        itemBuilder: (context, index) {
          return Container(
            color: Colors.primaries[index%18], // color: Colors.primaries[index % Colors.primaries.length],
            child: Center(
              child: Text(
                '${index + 1}',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),
    );
  }
}
