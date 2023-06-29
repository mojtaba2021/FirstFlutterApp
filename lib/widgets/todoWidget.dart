import 'package:flutter/material.dart';

class TodoWidget extends StatelessWidget {
  String title;
  bool isDone;

  TodoWidget({super.key, required this.title, required this.isDone});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            width: 20,
            height: 20,
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: isDone ? Colors.red : Colors.grey[400],
              borderRadius: BorderRadius.circular(5),
            ),
            child: isDone
                ? Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 14,
                  )
                : null,
          ),
          Text(
            title,
            style: TextStyle(
              color: isDone ? Colors.red : Colors.grey[400],
              fontWeight: FontWeight.bold,
              fontSize: 20,
              decoration:
                  isDone ? TextDecoration.lineThrough : TextDecoration.none,
            ),
          )
        ],
      ),
    );
  }
}
