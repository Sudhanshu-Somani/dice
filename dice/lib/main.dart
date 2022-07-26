import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

// This widget is the root of your application.
class _MyAppState extends State<MyApp> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  print("kaanta laga... aaouch");
                  var n = Random();
                  setState(() {
                    num = n.nextInt(6) + 1;
                  });

                  print('kaanta laga... ${num}');
                },
                child: Container(
                  child: Image.asset("images/${num}.png"),
                  width: 200,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text("Mubarrakan 😁",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 30,
              ),
              Text("aap jeet chuke h : ${num} crore",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
