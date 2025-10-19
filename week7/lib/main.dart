import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 19, 151, 7)),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 97, 205, 120),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: BigCard(pair),
        ),
      ),
    );
  }

  List<Widget> BigCard(WordPair pair) {
    return [
      const Text('A random idea and more: '),
      Text(pair.asLowerCase),
      ElevatedButton(
        onPressed: () {
          print('button pressed');
        },
        child: const Text('next'),
      ),
    ];
  }
}
