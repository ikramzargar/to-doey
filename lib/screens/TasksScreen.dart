import 'package:flutter/material.dart';
import 'package:todoey/widgets/TaskList.dart';
import 'AddTaskScreen.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/taskData.dart';


class TasksScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context) => AddTaskScreen());
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Container(
          padding: EdgeInsets.only(top: 60, right: 30, left: 30, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30,
                child: Icon(Icons.list, size: 30, color: Colors.lightBlueAccent,),
              ),
              SizedBox(height: 10,),
              Text('Todoey',
              style: TextStyle(
                fontSize: 50,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),),
              Text('${Provider.of<TaskData>(context).taskCount} Tasks',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),),

            ],
          ),
        ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),)
              ),
              child: TasksList(),
            ),
          )
    ],
      ),
    );
  }
}



