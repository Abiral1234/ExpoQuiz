import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Widgets/CircularButton2.dart';
import 'Visual Round.dart';

class BuzzerRound extends StatefulWidget {
  const BuzzerRound({super.key});

  @override
  State<BuzzerRound> createState() => _BuzzerRoundState();
}

class _BuzzerRoundState extends State<BuzzerRound> {
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
                      'Round 2 : Buzzer Audio Visual Round\n\n',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Sans',
                        fontSize: 36.0,
                      ),
                    ),
                    Text(
                      'Rules\n\n'
                      '1, A series of questions will be asked that include audio or visual elements.\n\n'
                      '2, We will play audio clips or show visuals on a screen.\n\n'
                      '3, Participants/teams must identify the audio clips, and visuals, or answer related questions.\n\n'
                      '4, We will use a buzzer system to determine who can answer first.\n\n'
                      '5, The first participant/team to buzz in gets a chance to answer.\n\n'
                      '6, If they answer correctly, they earn 15 points; if not, the question passes to the next participant/team.\n\n'
                      '7, If they answer incorrectly, they will lose 5 points.',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Sans',
                        fontSize: 20.0,
                      ),
                    ),
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
                    CircularButton2(
                      icon: Icons.arrow_forward,
                      onTap: () {
                        Get.to(VisualRound());
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
