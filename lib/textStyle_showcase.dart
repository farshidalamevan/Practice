import 'package:flutter/material.dart';
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
      home: TextStyleShowcase(),
    );
  }
}

class TextStyleShowcase extends StatelessWidget {
  const TextStyleShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextStyle Showcase'),
        backgroundColor: Colors.yellow.shade400,
        leading: Icon(Icons.text_snippet, size: 30),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Colors.black,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Bold + large size
            Text(
              'Text Style Showcase NO 1',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            // Italic + colored
            Text(
              'Text Style Showcase NO 2',
              style: TextStyle(
                color: Colors.redAccent,
                fontStyle: FontStyle.italic,
                fontSize: 24,
              ),
            ),
            // Underlined with underline style
            Text(
              'Text Style Showcase NO 3',
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 24,
                decorationStyle: TextDecorationStyle.dashed,
              ),
            ),
            // With letter spacing
            Text(
              'Text Style Showcase NO 4',
              style: TextStyle(fontSize: 24, letterSpacing: 5),
            ),
            // Text shadow
            Text(
              'Text Style Showcase NO 5',
              style: TextStyle(
                fontSize: 24,
                shadows: [
                  Shadow(
                    color: Colors.redAccent,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
            ),
            // Strikethrough
            Text(
              'Text Style Showcase NO 6',
              style: TextStyle(
                fontSize: 24,
                decoration: TextDecoration.lineThrough,
              ),
            ),
            // Text background
            Text(
              'Text Style Showcase NO 7',
              style: TextStyle(
                fontSize: 24,
                backgroundColor: Colors.yellowAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
