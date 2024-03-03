import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget{
  final bool isChecked;
  final String taskTile;
  final void Function(bool?)  checkboxCallback;
  final VoidCallback longPressCallback;

  TaskTile({required this.taskTile, required this.isChecked, required this.checkboxCallback, required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(taskTile,
        style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing:Checkbox(
        value: isChecked,
        onChanged:checkboxCallback,
        activeColor: Colors.lightBlueAccent,),
    );
  }
}



