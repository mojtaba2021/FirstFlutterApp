import 'package:flutter/material.dart';
import 'package:tasko/screens/task.dart';

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
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              "کارها را مدیریت کن",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            " با اپ تسکو کار های شخصی خودت را مثل آب خوردن مدیرت کن :)",
                            style: TextStyle(color: Colors.grey[600]),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (BuildContext context, int index) {
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "فلان کار",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "توضیحات فلان کار",
                                        style:
                                            TextStyle(color: Colors.grey[600]),
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
                        },
                      ),
                    )
                  ],
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TaskScreen())),
                    child: Container(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                    ),
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
