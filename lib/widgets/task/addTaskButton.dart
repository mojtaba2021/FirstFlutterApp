import 'package:flutter/material.dart';
import 'package:tasko/screens/task.dart';

class AddTaskButton extends StatelessWidget {
  
  void switchToCreateTask(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TaskScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 10,
      child: GestureDetector(
        onTap: () => switchToCreateTask(context),
        child: Container(
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
