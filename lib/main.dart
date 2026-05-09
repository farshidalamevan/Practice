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
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
        leading: Icon(Icons.phone),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Colors.black,
        ),
        backgroundColor: Colors.yellow,
      ),
      body: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text('${index + 1}')),
            title: Text(
              'Contact ${index + 1}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Tap to call'),
            trailing: Icon(Icons.phone),
            onTap: () => print('Calling Contact ${index + 1}'),
          );
        },
      ),
    );
  }
}
