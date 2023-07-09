import 'package:flutter/material.dart';
import 'package:tasko/widgets/task/addTaskButton.dart';
import 'package:tasko/widgets/task/heroSection.dart';
import 'package:tasko/widgets/task/taskItem.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.grey[200],
            padding: const EdgeInsets.only(
              top: 10,
              right: 20,
              left: 20,
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                          image: AssetImage("assets/images/task_logo.png"),
                          height: 50,
                          width: 50,
                        ),
                        Icon(
                          Icons.menu,
                          size: 32,
                        )
                      ],
                    ),
                    HeroSection(),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (BuildContext context, int index) =>
                            TaskItem(context: context,index: index),
                      ),
                    )
                  ],
                ),
                AddTaskButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
