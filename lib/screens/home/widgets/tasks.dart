// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:taskapp/models/task.dart';

class Tasks extends StatelessWidget {
  final taskList = Task.generateTasks();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          itemCount: taskList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          itemBuilder: (context, index) => taskList[index].isLast
              ? _buildAddTask()
              : _buildTask(context, taskList[index])),
    );
  }

  Widget _buildAddTask() {
    return Text('Add Task');
  }

  Widget _buildTask(BuildContext context, Task task) {
    return Text('Task');
  }
}
