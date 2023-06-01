import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itexpoquiz/General%20Round/GeneralRound.dart';
import 'dart:async';
import '../Buzzer Round/BuzzerRound.dart';
import '../Rapid Fire Round/RapidFireRound.dart';
import '../TimerApp.dart';
import '../Widgets/CircularButton2.dart';

class PuzzleChoice extends StatefulWidget {
  const PuzzleChoice({super.key});

  @override
  State<PuzzleChoice> createState() => _PuzzleChoiceState();
}

class _PuzzleChoiceState extends State<PuzzleChoice> {
  List QuestionList = [
    {"question": "Unscramble the following word :", "word": ""},
    {"question": "Unscramble the following word :", "word": "ecilop"},
    {"question": "Unscramble the following word :", "word": "remmah"},
    {"question": "Unscramble the following word :", "word": "ecilop"},
    {"question": "Unscramble the following word :", "word": "ecilop"},
    {"question": "Unscramble the following word :", "word": "ecilop"},
    {"question": "Unscramble the following word :", "word": "ecilop"},
    {"question": "Unscramble the following word :", "word": "ecilop"},
    {"question": "Unscramble the following word :", "word": "ecilop"},
  ];
  int _start = 30;
  bool _isTimerFinished = false;
  bool _isTimerRunning = false;
  int questionCount = 0;

  Timer? _timer;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }

  void showQuestion(int number) {
    print("HELLO");
    setState(() {
      questionCount = number;
      print(number);
    });
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            _isTimerFinished = true;
          });
          timer.cancel();
        } else {
          setState(() {
            _start--;
            _isTimerRunning = true;
          });
        }
      },
    );
  }

  List<bool> _isChecked = List<bool>.filled(20, false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'background.png', // Replace with your image path
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 50, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Theme(
                  data: Theme.of(context).copyWith(
                    unselectedWidgetColor: Colors
                        .white, // Set the unchecked checkbox color to white
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: List.generate(8, (index) {
                          int questionNumber = index + 1;
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                _isTimerRunning == false ? startTimer() : () {};

                                showQuestion(questionNumber);
                                _isChecked[index] = !_isChecked[index];
                              });
                            },
                            child: Row(
                              children: [
                                Checkbox(
                                  value: _isChecked[index],
                                  onChanged: (bool? value) {
                                    setState(() {
                                      _isTimerRunning == false
                                          ? startTimer()
                                          : () {};

                                      showQuestion(questionNumber);
                                      _isChecked[index] = value!;
                                    });
                                  },
                                  // Set the checked checkbox color to white
                                ),
                                Text(
                                  'Question $questionNumber',
                                  style: TextStyle(
                                    color: Colors
                                        .white, // Set the text color to white
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    _isTimerFinished
                        ? 'The time to answer is finished'
                        : 'Time left: $_start seconds',
                    style: TextStyle(
                      color: _isTimerFinished ? Colors.red : Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                  child: Column(
                    children: [
                      Text(
                        QuestionList[questionCount]['question'],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40 // Set the text color to white
                            ),
                      ),
                      Text(
                        QuestionList[questionCount]['word'],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 48 // Set the text color to white
                            ),
                      ),
                    ],
                  ),
                ),
              ],
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
                          _isTimerRunning = false;
                          _isTimerFinished = false;
                          _start = 30;
                          _timer!.cancel();
                        });
                      },
                      child: Text("Complete")),
                  CircularButton2(
                    icon: Icons.arrow_forward,
                    onTap: () {
                      Get.to(RapidFireRound());
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}

class Checklist extends StatefulWidget {
  @override
  _ChecklistState createState() => _ChecklistState();
}

class _ChecklistState extends State<Checklist> {
  List<bool> _isChecked = List<bool>.filled(20, false);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        unselectedWidgetColor:
            Colors.white, // Set the unchecked checkbox color to white
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: List.generate(10, (index) {
              int questionNumber = index + 1;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    //  startTimer();
                    _isChecked[index] = !_isChecked[index];
                  });
                },
                child: Row(
                  children: [
                    Checkbox(
                      value: _isChecked[index],
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked[index] = value!;
                        });
                      },
                      // Set the checked checkbox color to white
                    ),
                    Text(
                      'Question $questionNumber',
                      style: TextStyle(
                        color: Colors.white, // Set the text color to white
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
          Column(
            children: List.generate(10, (index) {
              int questionNumber = index + 11;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _isChecked[index + 10] = !_isChecked[index + 10];
                  });
                },
                child: Row(
                  children: [
                    Checkbox(
                      value: _isChecked[index + 10],
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked[index + 10] = value!;
                        });
                      },
                      // Set the checked checkbox color to white
                    ),
                    Text(
                      'Question $questionNumber',
                      style: TextStyle(
                        color: Colors.white, // Set the text color to white
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
