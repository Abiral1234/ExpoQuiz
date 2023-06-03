import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Widgets/CircularButton2.dart';
import 'PuzzleChoice.dart';

class PuzzleRound extends StatefulWidget {
  const PuzzleRound({super.key});

  @override
  State<PuzzleRound> createState() => _PuzzleRoundState();
}

class _PuzzleRoundState extends State<PuzzleRound> {
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
                  'Round 3: Puzzle Round: ',
                  style: TextStyle(
                    fontSize: 36.0,
                    fontFamily: 'sans',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  '1, A set of jumbled words or phrases will be shown on the screen.\n'
                  '2, Participants/teams must unscramble the jumbled word/phrase to find the correct word.\n'
                  '3, The participants will earn 5 points for each correct word\n',
                  style: TextStyle(
                    fontSize: 24.0,
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
                        Get.to(PuzzleChoice());
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
