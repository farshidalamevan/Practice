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
        title: Text('Feed'),
        leading: Icon(Icons.dynamic_feed),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Colors.black,
        ),
        backgroundColor: Colors.yellow,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.person),
                Text('Farshid Alam Evan'),
                TextButton(
                  onPressed: () {
                    print('Followed');
                  },
                  child: Text('Follow'),
                ),
              ],
            ),
            Divider(thickness: 5),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Person 1'),
                  subtitle: Text('123456'),
                  trailing: TextButton(onPressed: () {}, child: Text('See More')),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Person 2'),
                  subtitle: Text('234567'),
                  trailing: TextButton(onPressed: () {}, child: Text('See More')),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Person 3'),
                  subtitle: Text('345678'),
                  trailing: TextButton(onPressed: () {}, child: Text('See More')),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Person 4'),
                  subtitle: Text('456789'),
                  trailing: TextButton(onPressed: () {}, child: Text('See More')),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Person 5'),
                  subtitle: Text('12344256'),
                  trailing: TextButton(onPressed: () {}, child: Text('See More')),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Person 6'),
                  subtitle: Text('44123456'),
                  trailing: TextButton(onPressed: () {}, child: Text('See More')),
                ),


              ],
            ),
          ],
        ),
      ),
    );
  }
}
