import 'package:flutter/material.dart';
import 'package:untitled/task_with_db/DB/task_database.dart';
import 'package:untitled/task_with_db/MODELS/task_models.dart';

class TaskHome extends StatefulWidget {
  const TaskHome({super.key});

  @override
  State<TaskHome> createState() => _TaskHomeState();
}

class _TaskHomeState extends State<TaskHome> {
  List<TaskModels> tasks = [];

  TextEditingController taskController = TextEditingController();

  Future<void> addTask() async {
   await TaskDatabase.insertTask(
      TaskModels(title: taskController.text, isDone: false),
    );
   await refreshTask();
   taskController.clear();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    refreshTask();
  }

  Future<void> refreshTask() async {
    tasks = await TaskDatabase.getTask();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task with Database'),
        backgroundColor: Colors.yellowAccent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(

                    controller: taskController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your task',
                    ),
                  ),
                ),
                IconButton(onPressed: () => addTask(), icon: Icon(Icons.add)),
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                final task = tasks[index];
                return Card(
                  child: ListTile(
                    leading: Checkbox(value: task.isDone, onChanged: (_) {}),
                    title: Text(task.title),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.delete_forever,
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
