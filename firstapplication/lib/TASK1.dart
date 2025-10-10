import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("ListView without JSON")),
        body: ListView(
          children: const [
            ListTile(title: Text("Table")),
            ListTile(title: Text("Chair")),
            ListTile(title: Text("Bed")),
            ListTile(title: Text("Sofa")),
          ],
        ),
      ),
    );
  }
}