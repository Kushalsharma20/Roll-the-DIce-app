import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var leftbutton = 1;
  var rightbutton = 1;

  void RollTheDice() {
    leftbutton = Random().nextInt(6) + 1;
    rightbutton = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text(
          "Roll the Dice",
          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Pacifico'),
        )),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          RollTheDice();
                          print('left button pressed');
                        });
                      },
                      child: Container(
                        child: Image.asset(
                            'images/dice-six-faces-$leftbutton.png'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          RollTheDice();
                          print('right button pressed');
                        });
                      },
                      child: Container(
                        child: Image.asset(
                            'images/dice-six-faces-$rightbutton.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.lightBlue,
      ),
    );
  }
}
