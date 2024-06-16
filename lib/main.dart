import 'package:flutter/material.dart';
import 'package:flutter_projects/app_screens/home.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "Flutter",
        home: Scaffold(
            appBar: AppBar(
              title: Text("My flutter app", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
              backgroundColor: Colors.cyan,
            ),
            //backgroundColor: Colors.cyan,
            body: MyHomePage()
        )
    );
  }
}