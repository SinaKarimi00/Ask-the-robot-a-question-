import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 2;
  void ChangeImage() {
    number = Random().nextInt(5) + 1;
    print("Clicked: $number");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade600,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Center(
            child: Text(
              "Ask Me Anything",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: TextButton(
                onPressed: (() {
                  setState(() {
                    ChangeImage();
                  });
                }),
                child: Image.asset("images/ball$number.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
