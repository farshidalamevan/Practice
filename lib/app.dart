import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter App'),
        backgroundColor: Colors.green,
      ),
      body: Center(child: Text('Welcome to Flutter!')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('This is Floating Button');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


/// TASK 2
class ButtonAction extends StatelessWidget {
  const ButtonAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter App'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                print('Elevated pressed');
              },
              child: Text('Elevate Button'),
            ),
            TextButton(
              onPressed: () {
                print('Text Pressed');
              },
              child: Text('Text Button'),
            ),
            IconButton(
              onPressed: () {
                print('Liked!');
              },
              icon: Icon(Icons.thumb_up_sharp, size: 32),
            ),
          ],
        ),
      ),
    );
  }
}

/// Task 3

class GesturePractice extends StatelessWidget {
  const GesturePractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture Practice'),
      ),
      
    );
  }
}

