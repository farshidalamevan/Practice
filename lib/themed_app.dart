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
      home: ThemedApp(),
      theme: ThemeData(
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.yellowAccent,
          iconTheme: IconThemeData(size: 30, opacity: 0.7),

          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            shadowColor: Colors.black,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.green, width: 2),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.green, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.blueAccent, width: 4),
          ),
          labelStyle: TextStyle(fontSize: 16),
          hintStyle: TextStyle(color: Colors.purple.shade200),
        ),
      ),
    );
  }
}

class ThemedApp extends StatelessWidget {
  const ThemedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
        leading: Icon(Icons.format_paint_rounded),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(decoration: InputDecoration(labelText: 'First Name')),
              TextField(decoration: InputDecoration(labelText: 'Last Name')),
              ElevatedButton(onPressed: () {}, child: Text('Submit')),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ScendScrn()),
                  );
                },
                child: Text('GO 2nd Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ScendScrn extends StatelessWidget {
  const ScendScrn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2nd Screen'),
        leading: Icon(Icons.screen_search_desktop_outlined),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(decoration: InputDecoration(labelText: 'Name')),
              TextField(decoration: InputDecoration(labelText: 'Number')),
              ElevatedButton(onPressed: () {}, child: Text('Click me')),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('<'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
