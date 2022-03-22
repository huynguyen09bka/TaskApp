// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  final weekList = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
  final dayList = [24, 25, 26, 27, 28, 29, 30];
  var selected = 4;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width ;
    double height = MediaQuery. of(context). size. height ;
    return Container(
      height: 0.12 * height,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () => setState(() => selected = index),
                child: Container(
                  width: width / 7,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(weekList[index],
                          style: TextStyle(
                              color: selected == index
                                  ? Colors.black
                                  : Colors.grey)),
                      const SizedBox(height: 5),
                      Text(
                        '${dayList[index]}',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color:
                                selected == index ? Colors.black : Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
          itemCount: weekList.length),
    );
  }
}
