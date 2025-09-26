import 'package:flutter/material.dart';

void main() {
  // print()
  // runApp(HomeScreen());
  runApp(
    MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      )
      );
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        // leading: Icon(Icons.alarm, size: 55,color: Colors.white,),
        // leading: FlutterLogo(size: 55,),
        leading: Column(children: [Icon(Icons.abc), Text('XYZ')],),
        backgroundColor: Colors.purpleAccent.shade100,
        title: Text('List of games',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        
        ),
        actions: [Icon(Icons.abc), Icon(Icons.accessibility), Icon(Icons.back_hand)],
        ),
      // body: Text(
      //   style: TextStyle(color: Colors.red, fontSize: 100),
      //   'Hello',

      //   textDirection: TextDirection.ltr,
      // ),
    
    body: Column(

      children: [
Text(
        style: TextStyle(color: Colors.red, fontSize: 100),
        'CUI',

        textDirection: TextDirection.ltr,
      ),

Text(
        style: TextStyle(color: Colors.red, fontSize: 100),
        'Wah',

        textDirection: TextDirection.ltr,
      ),
      Text(
        style: TextStyle(color: Colors.red, fontSize: 100),
        'Campus',

        textDirection: TextDirection.ltr,
      ),
      Text('Near nawab abad', style: TextStyle(fontSize: 100),),
      Row(children: [

Text(
        style: TextStyle(color: Colors.red, fontSize: 100),
        'Wah',

        textDirection: TextDirection.ltr,
      ),
      Text(
        style: TextStyle(color: Colors.red, fontSize: 100),
        'Campus',

        textDirection: TextDirection.ltr,
      ),

      ],)
      ],
    ),
    );

    //////////////// Only text
    // return Text(

    //   style: TextStyle(

    //     color: Colors.red,
    //     fontSize: 45,

    //   ),
    //   'Hello',

    //   textDirection: TextDirection.ltr,

    // );
  }
}