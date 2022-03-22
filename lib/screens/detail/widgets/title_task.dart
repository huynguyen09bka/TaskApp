import 'package:flutter/material.dart';

class TitleTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Tasks',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black)),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.grey.withAlpha(25),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                Text('Timeline',
                    style: TextStyle(
                        color: Colors.grey[700], fontWeight: FontWeight.bold)),
                const Icon(Icons.keyboard_arrow_down_outlined)
              ],
            ),
          )
        ],
      ),
    );
  }
}
