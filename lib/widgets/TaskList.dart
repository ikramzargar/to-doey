import 'package:flutter/material.dart';
import 'TaskTile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/taskData.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'To add a task click on the plus icon. To delete a task longpress on the task',  // Replace with your desired text
                style: TextStyle(
                  // Add your desired text style
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: taskData.taskCount,
                itemBuilder: (context, index) {
                  final task = taskData.tasks[index];
                  return TaskTile(
              
                    taskTile: task.name,
                    isChecked: task.isDone,
                    checkboxCallback: (checkboxState) {
                      taskData.updateTask(task);
                    },
                    longPressCallback: () {
                      taskData.deleteTask(task);
                    },
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

