import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: SafeArea(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/example.png')
            ),
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
            bluidCard("+55 86 00000-0000", Icons.phone),
            bluidCard("arturroccha@gmail.com", Icons.email),
          ],
        )),
      ),
    );
  }

  Card bluidCard(String text, IconData icon){
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.black,
        ),
        title: Text(text,
          style: TextStyle(
              color: Colors.black,
              fontSize: 20
          ),
        ),
      ),
    );
  }
}
