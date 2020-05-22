import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildAvatar(50, "images/example.png"),
            Text("Artur Rocha",
              style: TextStyle(color: Colors.black,
                  fontSize: 40,
                  fontFamily: "Satisfy",
                  fontWeight: FontWeight.bold),
            ),
            Text("BEGINNER FLUTTER DEVELOPER",
              style: TextStyle(color: Colors.black,
                  fontSize: 20,
                  letterSpacing: 1),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildAvatar(30, "images/tt.png"),
                buildAvatar(30, "images/fb.jpg"),
                buildAvatar(30, "images/insta.png")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildAvatar(30, "images/cel.png"),
                buildAvatar(30, "images/email.png")
              ],
            )
          ],
        )),
      ),
    );
  }

  CircleAvatar buildAvatar(double radius, String image){
      return CircleAvatar(radius: radius, backgroundImage: AssetImage(image),);
  }
}