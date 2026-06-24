import 'package:flutter/material.dart';

void main() {
  runApp(PracticeTask());
}

class PracticeTask extends StatelessWidget {
  const PracticeTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ProfileCard());
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Card'),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Stack(
                  children: [
                    Positioned(
                      top: 20,
                      right: 0,
                      left: 0,
                      child: CircleAvatar(
                        radius: 40,
                        child: Icon(Icons.person, size: 50),
                      ),
                    ),
                    Positioned(
                      right: 60,
                      top: 120,
                      child: Text(
                        'Farshid Evan',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: .w800,
                          fontStyle: FontStyle.italic,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit, size: 30),
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      left: 0,
                      bottom: 0,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Follow', style: TextStyle(fontSize: 20)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}