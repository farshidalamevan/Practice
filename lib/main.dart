// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         // centerTitle: true,
//         title: Text(
//           'Home',
//           style: TextStyle(fontSize: 30, color: Colors.white),
//         ),
//         titleTextStyle: TextStyle(fontWeight: FontWeight(500)),
//         backgroundColor: Colors.blueGrey.shade400,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//
//           children: [
//             Text('No 1', style: TextStyle(fontSize: 30)),
//             Text('No 2', style: TextStyle(fontSize: 30)),
//             Text('No 3', style: TextStyle(fontSize: 30)),
//             SizedBox(height: 20),
//
//             TextButton(
//               onPressed: () {
//                 print('Single pressed ');
//               },
//               onLongPress: () {
//                 print('Long Pressed');
//               },
//               child: Text('Text Button'),
//             ),
//             TextButton.icon(onPressed: () {}, label: Icon(Icons.folder_open)),
//             ElevatedButton(
//               onPressed: () {},
//               child: Text('Elevated Button'),
//               style: ButtonStyle(
//                 backgroundColor: WidgetStatePropertyAll(Colors.yellow),
//               ),
//             ),
//             InkWell(
//               onDoubleTap: () {
//                 print('Double Tap');
//               },
//               onTap: () {
//                 print('Single Tap');
//               },
//               onLongPress: () {
//                 print('Long Tap');
//               },
//
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.blue,
//                   foregroundColor: Colors.white,
//                 ),
//                 onPressed: () {},
//                 child: Text('Elevated Button 2'),
//               ),
//             ),
//             Container( width: 100,
//               height: 100,
//               // transform: Matrix4.rotationZ(.5),
//               decoration: BoxDecoration(borderRadius:  BorderRadius.circular(10),),
//               child: Image.network(
//                 'https://cdn.ostad.app/user/avatar/2024-06-30T09-24-57.418Z-picofme%20(6).png',
//               ),
//             ),
//         SizedBox(height: 50,),
//         Container(
//           // padding: EdgeInsets.all(16),
//           // margin: EdgeInsets.all(20),
//
//           alignment: Alignment.center,
//           width: 100,
//           height: 100,
//           // transform: Matrix4.rotationZ(0.3),
//
//
//           decoration: BoxDecoration(
//               color: Colors.deepPurple,
//               borderRadius: BorderRadius.circular(50),
//               // border: Border.all(width: 2,color: Colors.red),
//               boxShadow: [
//                 BoxShadow(color: Colors.black26,
//                     offset: Offset(10, 5),
//                     blurRadius: 8
//                 ),
//               ]
//           ),
//           child: Text('Hello',style: TextStyle(color: Colors.white,fontSize: 20),),)
//           ],
//
//         ),
//
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(IntroApp());
}

class IntroApp extends StatefulWidget {
  const IntroApp({super.key});

  @override
  State<IntroApp> createState() => _IntroAppState();
}

class _IntroAppState extends State<IntroApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.yellow,
      title: "Practice App",

      home: MiniProfileCard(),
    );
  }
}

class MiniProfileCard extends StatefulWidget {
  const MiniProfileCard({super.key});

  @override
  State<MiniProfileCard> createState() => _MiniProfileCardState();
}

class _MiniProfileCardState extends State<MiniProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(height: 20),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.yellow,
              foregroundColor: Colors.black,
              radius: 20,
              child: Icon(Icons.person, size: 30),
            ),
            title: Text('Profile'),
            subtitle: Text('Evan'),
            trailing: Icon(Icons.arrow_right, size: 40),
          ),
          Divider(),
          SwitchListTile(value: true, onChanged: (value){}, title: Text('Dark Mode'),),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.yellow,
              foregroundColor: Colors.green,
              foregroundImage: NetworkImage(
                'https://cdn.ostad.app/user/avatar/2024-06-30T09-24-57.418Z-picofme%20(6).png',
              ),
            ),
            title: Text('Profile'),
            subtitle: Text('Evan'),
            trailing: Icon(Icons.arrow_right, size: 40),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            trailing: Icon(Icons.arrow_right, size: 40),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.privacy_tip),
            title: Text('Privacy'),
            trailing: Icon(Icons.arrow_right, size: 40),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            trailing: Icon(Icons.arrow_right, size: 40),
            onTap: () {
              print('Logout Done');
            },
          ),
          Divider(color: Colors.red, thickness: 5),
        ],
      ),
    );
  }
}
