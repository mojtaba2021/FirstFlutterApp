import 'package:flutter/material.dart';
import 'package:tasko/screens/home.dart';
import 'package:tasko/widgets/todoWidget.dart';

class TaskScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TaskScreenState();
}

class TaskScreenState extends State<TaskScreen> {
  bool? value = false;
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
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(style: BorderStyle.solid),
                            ),
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
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.only(top: 20),
                    children: [
                      TodoWidget(title: "first work",isDone: true,),
                      TodoWidget(title: "second work",isDone: false,)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
