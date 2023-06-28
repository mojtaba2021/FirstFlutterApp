import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "my fisrt app",
      home: Scaffold(
        appBar: AppBar(),
        body: const Column(
          children: [
            Center(
              child: Text("دراک وب اپ",style: TextStyle(fontFamily: "Vazir")),
            )
          ],
        ),
      ),
    ),
  );
}
