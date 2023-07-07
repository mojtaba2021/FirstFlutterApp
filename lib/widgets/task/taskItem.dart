import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TaskItem extends StatelessWidget {

  int index;
  BuildContext context;
  TaskItem({super.key, required this.context, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "فلان کار",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  "توضیحات فلان کار",
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          Icon(
            Icons.delete,
            color: Colors.red,
            size: 20,
          )
        ],
      ),
    );
  }
}
