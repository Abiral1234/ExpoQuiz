import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Widgets/CircularButton2.dart';
import 'RapidFireChoice.dart';

class RapidFireRound extends StatefulWidget {
  const RapidFireRound({super.key});

  @override
  State<RapidFireRound> createState() => _RapidFireRoundState();
}

class _RapidFireRoundState extends State<RapidFireRound> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF001C42),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              'background.png', // Replace with your image path
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Round 3: Rapid Fire Round: ',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontFamily: 'sans',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  '1, This round tests participants ability to answer questions quickly. \n\n'
                  '2, We will set a specific time limit for each question (10 seconds).\n\n'
                  '3, The quizmaster fires a series of questions one after the other.\n\n'
                  '4, Participants/teams must answer as many questions as possible within the time limit.\n\n'
                  '5, Assign points for each correct answer (5 marks).\n\n'
                  '6, No negative markings for incorrect answers.\n\n'
                  '7, The question will be of the following categories: IT, Geography, History, Sports, Astronomy, Science, and Economy.',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'sans',
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
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
                        Get.back();
                      },
                    ),
                    SizedBox(width: 20),
                    CircularButton2(
                      icon: Icons.arrow_forward,
                      onTap: () {
                        Get.to(RapidFireChoice());
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
