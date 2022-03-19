// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:taskapp/models/task.dart';
import 'package:dotted_border/dotted_border.dart';

class Tasks extends StatelessWidget {
  final taskList = Task.generateTasks();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
          itemCount: taskList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          itemBuilder: (context, index) => taskList[index].isLast!
              ? _buildAddTask()
              : 
        (context, taskList[index])),
    );
  }

  Widget _buildAddTask() {
    return DottedBorder(
        borderType: BorderType.RRect,
        radius: Radius.circular(20),
        dashPattern: [10, 10],
        strokeWidth: 2,
        child: const Center(
            child: Text(
          '+ Add',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        )));
  }

  Widget _buildTask(BuildContext context, Task task) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: task.bgColor, borderRadius: BorderRadius.circular(20)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Icon(
          task.iconData,
          color: task.iconColor,
          size: 35,
        ),
        SizedBox(height: 30),
        Text(
          task.title!,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        Row(
          children: [
            _buildTaskStatus(
                task.btnColor!, task.iconColor!, '${task.left} left'),
            SizedBox(width: 10),
            _buildTaskStatus(Colors.white, task.iconColor!, '${task.done} done')
          ],
        )
      ]),
    );
  }
}
