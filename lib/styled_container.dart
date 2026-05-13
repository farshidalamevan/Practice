import 'package:flutter/material.dart';

class StyledContainer extends StatelessWidget {
  const StyledContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Styled Container'),
        backgroundColor: Colors.yellow.shade400,
        leading: Icon(Icons.check_box_outline_blank_outlined),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Container(
              height: 120,
              width: 150,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    blurStyle: BlurStyle.normal,
                    offset: Offset(5, 0),
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Text(
                'Container 1',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white60,
                ),
              ),
            ),
            Container(
              height: 120,
              width: 150,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(20),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    blurStyle: BlurStyle.normal,
                    offset: Offset(0, 5),
                    spreadRadius: 3,
                  ),
                ],
              ),
              child: Text(
                'Container 2',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white60,
                ),
              ),
            ),
            Container(
              height: 150,
              width: 150,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              margin: EdgeInsets.all(16),
              alignment: Alignment.bottomCenter,

              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  opacity: .7,
                  image: NetworkImage(
                    "https://cdn.ostad.app/user/avatar/2024-06-30T09-24-57.418Z-picofme%20(6).png",
                  ),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    blurStyle: BlurStyle.normal,
                    offset: Offset(5, 5),
                    spreadRadius: 3,
                  ),
                ],
              ),
              child: Text(
                'F A EVAN',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
