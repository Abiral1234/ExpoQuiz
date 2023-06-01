import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itexpoquiz/General%20Round/GeneralRound.dart';
import 'dart:async';
import '../Buzzer Round/BuzzerRound.dart';
import '../TimerApp.dart';
import '../Widgets/CircularButton2.dart';

class Choice extends StatefulWidget {
  const Choice({super.key});

  @override
  State<Choice> createState() => _ChoiceState();
}

class _ChoiceState extends State<Choice> {
  List QuestionList = [
    {"questionno": "", "question": ""},
    {"questionno": "1", "question": "What is the full form of HTTP?"},
    {"questionno": "2", "question": "What is the full form of SMTP?"},
    {"questionno": "3", "question": "What is the full form of HTTP?"},
    {"questionno": "4", "question": "What is the full form of HTTP?"},
    {"questionno": "5", "question": "What is the full form of HTTP?"},
    {"questionno": "6", "question": "What is the full form of HTTP?"},
    {"questionno": "7", "question": "What is the full form of HTTP?"},
    {"questionno": "8", "question": "What is the full form of HTTP?"},
    {"questionno": "9", "question": "What is the full form of HTTP?"},
    {"questionno": "10", "question": "What is the full form of HTTP?"},
    {"questionno": "11", "question": "What is the full form of HTTP?"},
    {"questionno": "12", "question": "What is the full form of HTTP?"},
    {"questionno": "13", "question": "What is the full form of HTTP?"},
    {"questionno": "14", "question": "What is the full form of HTTP?"},
    {"questionno": "15", "question": "What is the full form of HTTP?"},
    {"questionno": "16", "question": "What is the full form of HTTP?"},
    {"questionno": "17", "question": "What is the full form of HTTP?"},
    {"questionno": "18", "question": "What is the full form of HTTP?"},
    {"questionno": "19", "question": "What is the full form of HTTP?"},
    {"questionno": "20", "question": "What is the full form of HTTP?"},
  ];
  int _start = 45;
  bool _isTimerFinished = false;
  int questionCount = 0;
  bool _isTimerRunning = false;

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
                        children: List.generate(10, (index) {
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
                      Column(
                        children: List.generate(10, (index) {
                          int questionNumber = index + 11;
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                _isTimerRunning == false ? startTimer() : () {};
                                showQuestion(questionNumber);
                                _isChecked[index + 10] =
                                    !_isChecked[index + 10];
                              });
                            },
                            child: Row(
                              children: [
                                Checkbox(
                                  value: _isChecked[index + 10],
                                  onChanged: (bool? value) {
                                    setState(() {
                                      showQuestion(questionNumber);
                                      _isTimerRunning == false
                                          ? startTimer()
                                          : () {};
                                      _isChecked[index + 10] = value!;
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
                        questionCount == 0
                            ? ''
                            : 'Question no ' +
                                QuestionList[questionCount]['questionno'] +
                                ":",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32 // Set the text color to white
                            ),
                      ),
                      Text(
                        QuestionList[questionCount]['question'],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40 // Set the text color to white
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
                      Get.to(GeneralRound());
                    },
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _isTimerRunning = false;
                          _isTimerFinished = false;
                          _start = 45;
                          _timer!.cancel();
                        });
                      },
                      child: Text("Complete")),
                  CircularButton2(
                    icon: Icons.arrow_forward,
                    onTap: () {
                      Get.to(BuzzerRound());
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
