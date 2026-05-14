import 'package:flutter/material.dart';

/// Login Form with Custom Widget , Dialog , ListTile

// void main() {
//   runApp(PracticeApp());
// }
//
// class PracticeApp extends StatelessWidget {
//   const PracticeApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Practice App',
//       debugShowCheckedModeBanner: false,
//       home: DialogPractice(),
//     );
//   }
// }

class DialogPractice extends StatelessWidget {
  const DialogPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog'),
        backgroundColor: Colors.yellow.shade400,
        leading: Icon(Icons.door_sliding, size: 30),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Colors.black,
        ),
      ),

      body: ListView(
        children: [
          Center(
            child: Text(
              'My Items',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          ContactItem(name: 'Araf', subtitle: '123456'),
          ContactItem(name: 'Omi', subtitle: '456789'),
          ContactItem(name: 'Azim', subtitle: '789456'),
          ContactItem(name: 'Dipto', subtitle: '963852'),
          ContactItem(name: 'Yeasin', subtitle: '563852'),
        ],
      ),
    );
  }
}

class ContactItem extends StatelessWidget {
  const ContactItem({super.key, required this.name, required this.subtitle});

  final String name;
  final String subtitle;

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          backgroundColor: Colors.blueGrey.shade200,
          title: Text('Delete $name?'),
          content: Text(
            'This will permanently delete $name from your contacts.',
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel', style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                print('$name deleted!');
                Navigator.pop(context);
              },
              child: Text('Delete', style: TextStyle(color: Colors.white)),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        leading: CircleAvatar(
          backgroundColor: Colors.black12,
          child: Icon(Icons.phone),
        ),
        trailing: IconButton(
          onPressed: () {
            _showDialog(context);
          },
          icon: Icon(Icons.delete),
        ),
      ),
    );
  }
}
