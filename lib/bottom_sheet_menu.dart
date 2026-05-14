import 'package:flutter/material.dart';

/// BottomSheet , ListTile , FloatingActionButton

void main() {
  runApp(PracticeApp());
}

class PracticeApp extends StatelessWidget {
  const PracticeApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice App',
      debugShowCheckedModeBanner: false,
      home: BottomSheetMenu(),
    );
  }
}

class BottomSheetMenu extends StatelessWidget {
  const BottomSheetMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.yellow.shade400,
        leading: Icon(Icons.home_work_sharp, size: 30),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Colors.black,
        ),
      ),
      body: Center(
        child: Container(
          height: 180,
          width: 180,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            boxShadow: <BoxShadow>[
              BoxShadow(color: Colors.black12, blurRadius: 5),
            ],
          ),
          child: Column(
            children: [
              Icon(Icons.image, size: 80),
              ListTile(
                title: Text(
                  'Files',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: Text('view your photos', textAlign: TextAlign.center),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Center(
                child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(Icons.camera_alt),
                      title: Text('Camera'),
                      onTap: () {
                        print('Camera Pressed');
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.photo),
                      title: Text('Gallery'),
                      onTap: () {
                        print('Gallery Pressed');
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.file_copy_sharp),
                      title: Text('Files'),
                      onTap: () {
                        print('Files Pressed');
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Icon(Icons.add, size: 30),
      ),
    );
  }
}
