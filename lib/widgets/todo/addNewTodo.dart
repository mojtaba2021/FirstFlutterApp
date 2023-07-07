
import 'package:flutter/material.dart';

class AddNewTodo extends StatelessWidget {

  final Function addTodo;

  AddNewTodo({super.key, required this.addTodo});

  TextEditingController newTodoInputController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: newTodoInputController,
      onSubmitted: (value) {
        addTodo(value);
        newTodoInputController.clear();
      },
      decoration: const InputDecoration(
        border: InputBorder.none,
        hintText: "کار جدید به لیست کار ها اضافه کنید",
      ),
    );
  }
}
