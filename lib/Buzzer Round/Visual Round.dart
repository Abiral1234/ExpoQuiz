import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Widgets/CircularButton2.dart';
import 'AudioRound.dart';

class VisualRound extends StatefulWidget {
  const VisualRound({super.key});

  @override
  State<VisualRound> createState() => _VisualRoundState();
}

class _VisualRoundState extends State<VisualRound> {
  List questions = [
    {"question": "", "image": "null"},
    {"question": "Guess this person 1", "image": "image.png"},
    {"question": "Guess this person 2", "image": "image2.png"},
    {"question": "Guess this person 3", "image": "image.png"},
    {"question": "Guess this person 4", "image": "image2.png"}
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'background.png', // Replace with your background image path
            fit: BoxFit.cover,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    'Visual Round',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Sans',
                      fontSize: 30.0,
                    ),
                  ),
                  Text(
                    questions[questionNumber]['question'],
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Sans',
                      fontSize: 20.0,
                    ),
                  ),
                  Container(
                      height: 400,
                      width: 400,
                      child: questionNumber == 0
                          ? Container()
                          : Image.asset(questions[questionNumber]['image'])),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircularButton2(
                    icon: Icons.arrow_back,
                    onTap: () {
                      // Go back to the previous page
                      Get.back();
                    },
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          questionNumber = 1;
                        });
                      },
                      child: Text("1")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          questionNumber = 2;
                        });
                      },
                      child: Text("2")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          questionNumber = 3;
                        });
                      },
                      child: Text("3")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          questionNumber = 4;
                        });
                      },
                      child: Text("4")),
                  CircularButton2(
                    icon: Icons.arrow_forward,
                    onTap: () {
                      Get.to(AudioRound());
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
