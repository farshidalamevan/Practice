import 'package:flutter/material.dart';


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
          Card(
            child: ListTile(
              title: Text(
                'Contact 1',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('123456'),
              leading: CircleAvatar(
                backgroundColor: Colors.black12,
                child: Icon(Icons.phone),
              ),
              trailing: IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    barrierColor: Colors.white60,

                    builder: (ctx) {
                      return AlertDialog(
                        backgroundColor: Colors.blueGrey.shade200,

                        title: Text('Are you sure?'),
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
                            child: Text(
                              'Cancel',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              print('Item deleted!');
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Delete',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                icon: Icon(Icons.delete),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                'Contact 2',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('456789'),
              leading: CircleAvatar(
                backgroundColor: Colors.black12,
                child: Icon(Icons.phone),
              ),
              trailing: IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    barrierColor: Colors.white60,

                    builder: (ctx) {
                      return AlertDialog(
                        backgroundColor: Colors.blueGrey.shade200,

                        title: Text('Are you sure?'),
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
                            child: Text(
                              'Cancel',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              print('Item deleted!');
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Delete',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                icon: Icon(Icons.delete),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                'Contact 3',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('987321'),
              leading: CircleAvatar(
                backgroundColor: Colors.black12,
                child: Icon(Icons.phone),
              ),
              trailing: IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    barrierColor: Colors.white60,

                    builder: (ctx) {
                      return AlertDialog(
                        backgroundColor: Colors.blueGrey.shade200,

                        title: Text('Are you sure?'),
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
                            child: Text(
                              'Cancel',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              print('Item deleted!');
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Delete',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                icon: Icon(Icons.delete),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
