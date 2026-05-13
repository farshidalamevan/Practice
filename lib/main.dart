import 'package:flutter/material.dart';
import 'package:untitled/photo_grid.dart';


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
      home: PhotoGrid(),
    );
  }
}