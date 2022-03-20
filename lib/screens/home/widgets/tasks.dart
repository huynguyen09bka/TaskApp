// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:taskapp/models/task.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:taskapp/screens/detail/detail.dart';

class Tasks extends StatelessWidget {
  final taskList = Task.generateTasks();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
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
    return DottedBorder(
        borderType: BorderType.RRect,
        radius: const Radius.circular(20),
        dashPattern: const [10, 10],
        strokeWidth: 2,
        child: const Center(
            child: Text(
          '+ Add',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        )));
  }

  Widget _buildTask(BuildContext context, Task task) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => DetailPage(task)));
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: task.bgColor, borderRadius: BorderRadius.circular(20)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Icon(
            task.iconData,
            color: task.iconColor,
            size: 35,
          ),
          const SizedBox(height: 30),
          Text(
            task.title!,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              _buildTaskStatus(
                  task.btnColor!, task.iconColor!, '${task.left} left'),
              const SizedBox(width: 5),
              _buildTaskStatus(
                  Colors.white, task.iconColor!, '${task.done} done')
            ],
          )
        ]),
      ),
    );
  }

  Widget _buildTaskStatus(Color bgColor, Color textColor, String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(20)),
      child: Text(
        text,
        style: TextStyle(
            color: textColor, fontWeight: FontWeight.bold, fontSize: 12),
      ),
    );
  }
}
