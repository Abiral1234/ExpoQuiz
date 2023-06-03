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
  //-------------------------Set 1-----------------------
  // List questions = [
  //   {"question": "", "image": "null"},
  //   {
  //     "question": "Name the  Space x’s spacecraft given below.",
  //     "image": "image6.png"
  //   }, //starship
  //   {
  //     "question": "Name the player given below:",
  //     "image": "image8.png"
  //   }, //Damián Emiliano Martínez
  //   {"question": "Who is this leader?", "image": "image9.png"}, //Joseph Stalin
  //   {
  //     "question": "Which country flag is this?",
  //     "image": "image11.png"
  //   } //kazakstan
  // ];
  // //-----------------SET 2----------------//
  // List questions = [
  //   {"question": "", "image": "null"},
  //   {
  //     "question": "Name the person given below?",
  //     "image": "image10.png"
  //   }, //Prince William
  //   {
  //     "question": "Which Country flag is this?",
  //     "image": "image12.png"
  //   }, //Brunei
  //   {
  //     "question": "In which country is this place situated?",
  //     "image": "image13.png"
  //   }, //Peru(machu picchu)
  //   {
  //     "question": "Who is this Blockchain Genius?",
  //     "image": "image14.png"
  //   } //Vitalik Buterin
  // ];
  //  //-----------------SET 3----------------//
  // List questions = [
  //   {"question": "", "image": "null"},
  //   {"question": "Who is this player?", "image": "image15.png"}, //Klay Thomson
  //   {"question": "Who is this player?", "image": "image16.png"}, //Basant Regmi
  //   {
  //     "question": "Who is this person?",
  //     "image": "image17.png"
  //   }, //Florence Nightingale
  //   {
  //     "question": "Which mountain is on the right in the picture below?",
  //     "image": "image18.png"
  //   } //Nuptse(7861m)
  // ];
  //  //-----------------SET 4----------------//
  // List questions = [
  //   {"question": "", "image": "null"},
  //   {
  //     "question": "Who is this player?",
  //     "image": "image19.png"
  //   }, //Anjila Tumbapo Subba
  //   {
  //     "question": "Name the person given below.",
  //     "image": "image20.png"
  //   }, //Bhimsen Thapa
  //   {
  //     "question": "Who is this person?",
  //     "image": "image22.png"
  //   }, //Larry page(founder of google)
  //   {
  //     "question": "Who is this person?",
  //     "image": "image23.png"
  //   } //Sam Altman(Ceo of Chatgpt)
  // ];
  //  //-----------------SET 5----------------//
  List questions = [
    {"question": "", "image": "null"},
    {"question": "Who is this person?", "image": "image24.png"}, //Shou Zi Chew
    {
      "question": "Who is the figure given below?",
      "image": "image25.png"
    }, //Hippocrates, father of modern medicine
    {
      "question":
          "Name this lake which is located at an elevation of 3,611.5 m in nepal?",
      "image": "image26.png"
    }, //Shey phoksundo
    {
      "question": "Who is this politician?",
      "image": "image27.png"
    } //Netra Bikram Chand(Biplov leader)
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
                        height: 350,
                        width: 350,
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
      ),
    );
  }
}
