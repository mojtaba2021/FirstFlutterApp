import 'package:flutter/material.dart';
import 'package:tasko/models/todo.dart';
import 'package:tasko/widgets/todo/addNewTodo.dart';
import 'package:tasko/widgets/todoWidget.dart';

class TaskScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TaskScreenState();
}

class TaskScreenState extends State<TaskScreen> {
  List<Todo> todos = [];

  addTodo(value) {
    setState(() => todos.add(Todo(title: value, isDone: false)));
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Icon(Icons.arrow_back),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "عنوان کار شما",
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800]),
                        ),
                      ),
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "توضیحات کار خود را وارد کنید",
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                  minLines: 1,
                  maxLines: 3,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: todos.length,
                    itemBuilder: (context, index) => TodoWidget(
                      title: todos[index].title,
                      isDone: false,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: AddNewTodo(addTodo: addTodo),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
