import 'package:flutter/material.dart';

void main() {
  runApp(LabMidApp());
}

class LabMidApp extends StatefulWidget {
  @override
  _LabMidAppState createState() => _LabMidAppState();
}

class _LabMidAppState extends State<LabMidApp> {
  final List<String> users = [];
  final List<String> tasks = [];
  String? selectedUser, selectedTask;
  final TextEditingController userController = TextEditingController();
  final TextEditingController taskController = TextEditingController();
  final List<String> assignedTasks = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Task Manager',
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('User Task Manager'),
            bottom: TabBar(
              tabs: [
                Tab(text: 'Register User'),
                Tab(text: 'Add Task'),
                Tab(text: 'Assign Task'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              // Tab 1: Register User
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    TextField(
                      controller: userController,
                      decoration: InputDecoration(labelText: 'Enter user name'),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        if (userController.text.isNotEmpty) {
                          setState(() {
                            users.add(userController.text);
                            userController.clear();
                          });
                        }
                      },
                      child: Text('Register User'),
                    ),
                    SizedBox(height: 20),
                    Text('Users:', style: TextStyle(fontWeight: FontWeight.bold)),
                    for (var u in users) Text(u),
                  ],
                ),
              ),
              // Tab 2: Add Task
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    TextField(
                      controller: taskController,
                      decoration: InputDecoration(labelText: 'Enter task name'),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        if (taskController.text.isNotEmpty) {
                          setState(() {
                            tasks.add(taskController.text);
                            taskController.clear();
                          });
                        }
                      },
                      child: Text('Add Task'),
                    ),
                    SizedBox(height: 20),
                    Text('Tasks:', style: TextStyle(fontWeight: FontWeight.bold)),
                    for (var t in tasks) Text(t),
                  ],
                ),
              ),
              // Tab 3: Assign Task
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    DropdownButton<String>(
                      value: users.contains(selectedUser) ? selectedUser : null,
                      hint: Text('Select User'),
                      items: users
                          .map((u) => DropdownMenuItem(value: u, child: Text(u)))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          selectedUser = val;
                        });
                      },
                    ),
                    DropdownButton<String>(
                      value: tasks.contains(selectedTask) ? selectedTask : null,
                      hint: Text('Select Task'),
                      items: tasks
                          .map((t) => DropdownMenuItem(value: t, child: Text(t)))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          selectedTask = val;
                        });
                      },
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        if (selectedUser != null && selectedTask != null) {
                          setState(() {
                            assignedTasks
                                .add('$selectedTask assigned to $selectedUser');
                          });
                        }
                      },
                      child: Text('Assign Task'),
                    ),
                    SizedBox(height: 20),
                    Text('Assignments:',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    for (var a in assignedTasks) Text(a),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
