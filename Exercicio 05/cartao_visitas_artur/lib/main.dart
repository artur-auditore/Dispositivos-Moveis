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
        backgroundColor: Colors.blueAccent,
        body: SafeArea(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildAvatar(50, "images/example.png"),
            Text("Artur Rocha",
              style: TextStyle(color: Colors.white,
                  fontSize: 40,
                  fontFamily: "Satisfy",
                  fontWeight: FontWeight.bold),
            ),
            Text("BEGINNER FLUTTER DEVELOPER",
              style: TextStyle(color: Colors.white,
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
                buildSizedbox(10),
                buildAvatar(30, "images/fb.png"),
                buildSizedbox(10),
                buildAvatar(30, "images/insta.png"),
              ],
            ),
            SizedBox(
              height: 20,
              width: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildAvatar(30, "images/cel.png"),
                buildSizedbox(10),
                buildAvatar(30, "images/mail.png",),
                buildSizedbox(10),
                buildAvatar(30, "images/git.png")
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

  SizedBox buildSizedbox(double w){
    return SizedBox( width: w);
  }

  void _showToast(BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Added to favorite'),
    ));
  }
}