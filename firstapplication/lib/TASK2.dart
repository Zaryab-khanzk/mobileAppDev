import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: JsonListExample(),
    );
  }
}

class JsonListExample extends StatefulWidget {
  @override
  _JsonListExampleState createState() => _JsonListExampleState();
}

class _JsonListExampleState extends State<JsonListExample> {
  List users = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  // Fetch data from online JSON API
  Future<void> fetchData() async {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/users");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      setState(() {
        users = json.decode(response.body);
      });
    } else {
      print("Failed to load data");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView with JSON Data")),
      body: users.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(user["name"][0]),
                    ),
                    title: Text(user["name"]),
                    subtitle: Text(user["email"]),
                  ),
                );
              },
            ),
    );
  }
}
