import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itexpoquiz/Buzzer%20Round/Visual%20Round.dart';
import 'package:itexpoquiz/General%20Round/Choice.dart';
import 'package:itexpoquiz/Puzzle%20Round/PuzzleRound.dart';
import 'package:itexpoquiz/Rapid%20Fire%20Round/RapidFireChoice.dart';
import 'dart:async';
import 'Buzzer Round/AudioRound.dart';
import 'FirstPage.dart';
import 'Puzzle Round/PuzzleChoice.dart';
import 'TimerApp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(body: Choice()),
    );
  }
}
