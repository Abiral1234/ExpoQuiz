import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Widgets/CircularButton2.dart';
import '../endPage.dart';

class RapidFireChoice extends StatefulWidget {
  const RapidFireChoice({super.key});

  @override
  State<RapidFireChoice> createState() => _RapidFireChoiceState();
}

class _RapidFireChoiceState extends State<RapidFireChoice> {
  List questions = [
    {"question": "", "questionset": ""},
    {"question": "", "questionset": ""},
    {"question": "", "questionset": ""},
    {"question": "", "questionset": ""},
    {"question": "", "questionset": ""}
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
      backgroundColor: Color(0xFF001C42),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Stack(
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
                      'Rapid Fire Round',
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
                        child: Text(
                          questions[questionNumber]['questionset'],
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Sans',
                            fontSize: 20.0,
                          ),
                        )),
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
                        Get.to(endPage());
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
