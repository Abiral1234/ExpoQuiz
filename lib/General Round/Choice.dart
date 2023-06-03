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
  bool showAnswer = false;

  //------------------ SET 1 --------------------//
  // List QuestionList = [
  //   {"questionno": "", "question": "", "answer": ""},
  //   {
  //     "questionno": "1",
  //     "question": "Where are the Spanish Steps located?",
  //     "answer": "Rome, Italy"
  //   },//Field Geography
  //   {
  //     "questionno": "2",
  //     "question": "In what year did World War I end?",
  //     "answer": "1918"
  //   },//Field History
  //   {
  //     "questionno": "3",
  //     "question":
  //         "What is the phenomenon where a star \nexplodes and becomes extremely bright?",
  //     "answer": "Supernova"
  //   },//Field Astronomy
  //   {
  //     "questionno": "4",
  //     "question": "Which planet has the largest ocean?",
  //     "answer": "Jupiter"
  //   },//Field Astronomy
  //   {
  //     "questionno": "5",
  //     "question": "How many countries are there in the United Kingdom?",
  //     "answer": "4"
  //   },//Field Geography
  //   {
  //     "questionno": "6",
  //     "question": "Which is the largest hydro power of Nepal?",
  //     "answer": "Upper Tamakoshi Hydropower"
  //   },//Field Nepal Geography
  //   {
  //     "questionno": "7",
  //     "question": "In which year was the ‘C’ programming language developed?",
  //     "answer": "1972"
  //   },//Field IT
  //   {
  //     "questionno": "8",
  //     "question": "Who was the first President of the United States?",
  //     "answer": "George Washington"
  //   },//Field History
  //   {
  //     "questionno": "9",
  //     "question": "Who was the first elected prime minister of Nepal?",
  //     "answer": "B.P Koirala"
  //   },//Field History
  //   {
  //     "questionno": "10",
  //     "question": "Which actor has won the most Academy Awards for Best Actor?",
  //     "answer": "Daniel Day-Lewis, with three wins"
  //   },//Field Celebrity
  //   {
  //     "questionno": "11",
  //     "question":
  //         "When was the abolition of the Amali system in Nepal?",
  //     "answer": "B.S. 1868"
  //   },//Field Nepal History
  //   {
  //     "questionno": "12",
  //     "question": "What is the national sport of Nepal?",
  //     "answer": "Volleyball"
  //   },//Field Sports
  //   {
  //     "questionno": "13",
  //     "question": "Which Nepali cricketer has the highest individual score in One Day Internationals (ODIs)?",
  //     "answer": "Rohit paudel"
  //   },//Field Sports
  //   {
  //     "questionno": "14",
  //     "question": "How many players are there on the baseball team?",
  //     "answer": "9"
  //   },//Field Sports
  //   {
  //     "questionno": "15",
  //     "question": "What is the pH value of human blood?",
  //     "answer": "7.4"
  //   },
  //   {
  //     "questionno": "16",
  //     "question": "What is the full form of HTTP?",
  //     "answer": "Hypertext Transfer Protocol"
  //   },//Field IT(technology)
  //   {
  //     "questionno": "17",
  //     "question": "How many bones are present in human ears?",
  //     "answer": "3"
  //   },//Field Science
  //   {
  //     "questionno": "18",
  //     "question": "In what year was the first iPhone created?",
  //     "answer": "2007"
  //   },//Field IT(technology)
  //   {
  //     "questionno": "19",
  //     "question": "Who is the CEO of Apple?",
  //     "answer": "Tim Cook"
  //   },//Field IT(technology)
  //   {
  //     "questionno": "20",
  //     "question": "Who is considered as the first computer programmer?",
  //     "answer": "Ada Lovelace"
  //   },//Field IT (technology)
  // ];

  //-------------------------SET 2 ---------------------------//

  // List QuestionList = [
  //   {"questionno": "", "question": "", "answer": ""},
  //   {
  //     "questionno": "1",
  //     "question": "What is the capital city of Spain?",
  //     "answer": "Madrid"
  //   }, //Field Geography
  //   {
  //     "questionno": "2",
  //     "question": "Who was the first emperor of Rome?",
  //     "answer": "Caesar Augustus"
  //   }, //Field History
  //   {
  //     "questionno": "3",
  //     "question":
  //         "What is the term used to describe the study of celestial objects?",
  //     "answer": "Astronomy"
  //   }, //Field Astronomy
  //   {
  //     "questionno": "4",
  //     "question": "Which planet is known as the Red Planet?",
  //     "answer": "Mars"
  //   }, //Field Astronomy
  //   {
  //     "questionno": "5",
  //     "question": "What is the currency of the United Kingdom?",
  //     "answer": "Pound sterling"
  //   }, //Field Geography
  //   {
  //     "questionno": "6",
  //     "question": "What is the capital city of Canada?",
  //     "answer": " Ottawa"
  //   }, //Field Nepal Geography
  //   {
  //     "questionno": "7",
  //     "question": "When was Tesla founded?",
  //     "answer": " 2003"
  //   }, //Field IT
  //   {
  //     "questionno": "8",
  //     "question": "Who was the second President of the United States?",
  //     "answer": "John Adams"
  //   }, //Field History
  //   {
  //     "questionno": "9",
  //     "question": "Which is the first Highway of Nepal? ",
  //     "answer": "Tribhuvan Highway"
  //   }, //Field History
  //   {
  //     "questionno": "10",
  //     "question":
  //         "Which actress has won the most Academy Awards for Best Actress?",
  //     "answer": "Katharine Hepburn, with four wins"
  //   }, //Field Celebrity
  //   {
  //     "questionno": "11",
  //     "question":
  //         "In which year did Nepal become a member of the United Nations?",
  //     "answer": "1955"
  //   }, //Field Nepal History
  //   {
  //     "questionno": "12",
  //     "question": "What is the national game of Nepal?",
  //     "answer": "Volleyball"
  //   }, //Field Sports
  //   {
  //     "questionno": "13",
  //     "question": "Which country won their first FIFA World Cup in 1930?",
  //     "answer": "Uruguay."
  //   }, //Field Sports
  //   {
  //     "questionno": "14",
  //     "question": "How many players are there on a basketball team?",
  //     "answer": "5"
  //   }, //Field Sports
  //   {
  //     "questionno": "15",
  //     "question": "What is the chemical symbol for gold?",
  //     "answer": "Au"
  //   },
  //   {
  //     "questionno": "16",
  //     "question": "What is the full form of HTML?",
  //     "answer": "Hypertext Markup Language"
  //   }, //Field IT(technology)
  //   {
  //     "questionno": "17",
  //     "question": "How many chambers are there in a human heart?",
  //     "answer": "4"
  //   }, //Field Science
  //   {
  //     "questionno": "18",
  //     "question": "Who is the inventor of email?",
  //     "answer": "Ray Tomlinson"
  //   }, //Field IT(technology)
  //   {
  //     "questionno": "19",
  //     "question": "Who is the CEO of Microsoft?",
  //     "answer": "Satya Nadella"
  //   }, //Field IT(technology)
  //   {
  //     "questionno": "20",
  //     "question": "When was Facebook founded?",
  //     "answer": " 2004"
  //   }, //Field IT (technology)
  // ];

  //------------------Set 3 -----------------------------//
  // List QuestionList = [
  //   {"questionno": "", "question": "", "answer": ""},
  //   {
  //     "questionno": "1",
  //     "question": "Which city is known as the 'Eternal City'?",
  //     "answer": "Rome"
  //   }, //Field Geography
  //   {
  //     "questionno": "2",
  //     "question": "Which scientist developed the theory of relativity? ?",
  //     "answer": "Albert Einstein."
  //   }, //Field History
  //   {
  //     "questionno": "3",
  //     "question":
  //         "When was Pluto removed from the list of planets?",
  //     "answer": "2006"
  //   }, //Field Astronomy
  //   {
  //     "questionno": "4",
  //     "question": "Which planet is known for its iconic Great Red Spot?",
  //     "answer": "Jupiter"
  //   }, //Field Astronomy
  //   {
  //     "questionno": "5",
  //     "question": "What is the largest country in the United Kingdom?",
  //     "answer": "England"
  //   }, //Field Geography
  //   {
  //     "questionno": "6",
  //     "question": "What is the capital city of Sweden? ",
  //     "answer": "Stockholm"
  //   }, //Field Nepal Geography
  //   {
  //     "questionno": "7",
  //     "question": "In what year was the first iPhone created?",
  //     "answer": "2007"
  //   }, //Field IT
  //   {
  //     "questionno": "8",
  //     "question": "Who was the second President of the United States?",
  //     "answer": "John Adams"
  //   }, //Field History
  //   {
  //     "questionno": "9",
  //     "question": "Who was the first female president of Nepal?",
  //     "answer": "Bidhya Devi Bhandari"
  //   }, //Field History
  //   {
  //     "questionno": "10",
  //     "question":
  //         "Which actress has won the most Academy Awards for Best Actress?",
  //     "answer": "Katharine hepburn with 4 wins"
  //   }, //Field Celebrity
  //   {
  //     "questionno": "11",
  //     "question":
  //         "In which year did Nepal become a member of the United Nations?",
  //     "answer": "1955"
  //   }, //Field Nepal History
  //   {
  //     "questionno": "12",
  //     "question": "What is the national game of Nepal?",
  //     "answer": "Volleyball"
  //   }, //Field Sports
  //   {
  //     "questionno": "13",
  //     "question": "Which sport is known as the 'beautiful game'?",
  //     "answer": "Football"
  //   }, //Field Sports
  //   {
  //     "questionno": "14",
  //     "question": "How many players are there on a football team?",
  //     "answer": "11"
  //   }, //Field Sports
  //   {
  //     "questionno": "15",
  //     "question": "What is the average body temperature of a human?",
  //     "answer": "98.6 degrees Fahrenheit"
  //   },
  //   {
  //     "questionno": "16",
  //     "question": "When was Amazon founded?",
  //     "answer": "1994"
  //   }, //Field IT(technology)
  //   {
  //     "questionno": "17",
  //     "question": "How many teeth does an adult human have?",
  //     "answer": "32"
  //   }, //Field Science
  //   {
  //     "questionno": "18",
  //     "question": "When was Google founded?",
  //     "answer": " 1998"
  //   }, //Field IT(technology)
  //   {
  //     "questionno": "19",
  //     "question": "52.	What does URL stand for?",
  //     "answer": "Uniform Resource Locator"
  //   }, //Field IT(technology)
  //   {
  //     "questionno": "20",
  //     "question": "Who is credited with inventing the computer mouse?",
  //     "answer": "Douglas Engelbart"
  //   }, //Field IT (technology)
  // ];

  //------------------SET 4 -----------------//
  // List QuestionList = [
  //   {"questionno": "", "question": "", "answer": ""},
  //   {
  //     "questionno": "1",
  //     "question": "Which famous waterfall is located in Venezuela?",
  //     "answer": "Angel Falls"
  //   }, //Field Geography
  //   {
  //     "questionno": "2",
  //     "question": "In what year did the American Civil War end?",
  //     "answer": "1865"
  //   }, //Field History
  //   {
  //     "questionno": "3",
  //     "question": "What is the largest moon in the solar system?",
  //     "answer": "Ganymede"
  //   }, //Field Astronomy
  //   {
  //     "questionno": "4",
  //     "question": "Which planet is known as the 'Red Planet'?",
  //     "answer": "Mars"
  //   }, //Field Astronomy
  //   {
  //     "questionno": "5",
  //     "question": "Which country is known as the 'Land of Fire and Ice'?",
  //     "answer": "Iceland"
  //   }, //Field Geography
  //   {
  //     "questionno": "6",
  //     "question": "Which is the largest dam in the world?",
  //     "answer": "Three Gorges Dam"
  //   }, //Field Engineering
  //   {
  //     "questionno": "7",
  //     "question":
  //         "Who is the CEO of Microsoft?",
  //     "answer": "Satya Nadella"
  //   }, //Field IT
  //   {
  //     "questionno": "8",
  //     "question": "Who wrote the play 'Romeo and Juliet'?",
  //     "answer": "William Shakespeare"
  //   }, //Field Literature
  //   {
  //     "questionno": "9",
  //     "question":
  //         "Who was the first female Prime Minister of the United Kingdom?",
  //     "answer": "Margaret Thatcher"
  //   }, //Field History
  //   {
  //     "questionno": "10",
  //     "question":
  //         "Which actress has won the most Academy Awards for Best Actress?",
  //     "answer": "Katharine Hepburn, with four wins"
  //   }, //Field Celebrity
  //   {
  //     "questionno": "11",
  //     "question":
  //         "In which year did the United States land the first man on the moon?",
  //     "answer": "1969"
  //   }, //Field History
  //   {
  //     "questionno": "12",
  //     "question": "What is the national sport of Japan?",
  //     "answer": "Sumo wrestling"
  //   }, //Field Sports
  //   {
  //     "questionno": "13",
  //     "question": "Which country has won the most cricket World Cup titles?",
  //     "answer": "Australia"
  //   }, //Field Sports
  //   {
  //     "questionno": "14",
  //     "question": "How many players are there on a soccer team?",
  //     "answer": "11"
  //   }, //Field Sports
  //   {
  //     "questionno": "15",
  //     "question": "What is the chemical symbol for sodium?",
  //     "answer": "Na"
  //   },
  //   {
  //     "questionno": "16",
  //     "question": "What is the full form of HTML?",
  //     "answer": "Hypertext Markup Language"
  //   }, //Field IT(technology)
  //   {
  //     "questionno": "17",
  //     "question": "How many chambers are there in the human heart?",
  //     "answer": "4"
  //   }, //Field Science
  //   {
  //     "questionno": "18",
  //     "question": "What is the name of the first web browser?",
  //     "answer": "WorldWideWeb"
  //   }, //Field IT(technology)
  //   {
  //     "questionno": "19",
  //     "question": " Who is the inventor of the internet?",
  //     "answer": "Tim Berners-Lee"
  //   }, //Field IT(technology)
  //   {
  //     "questionno": "20",
  //     "question": "Who is credited with inventing the first computer?",
  //     "answer": "Charles Babbage"
  //   }, //Field IT (technology)
  // ];

  //--------------------SET 5-----------------------//
  List QuestionList = [
    {"questionno": "", "question": "", "answer": ""},
    {
      "questionno": "1",
      "question": "Which river flows through Paris?",
      "answer": "Seine"
    }, //Field Geography
    {
      "questionno": "2",
      "question": "Who wrote the famous novel '1984'?",
      "answer": "George Orwell"
    }, //Field Literature
    {
      "questionno": "3",
      "question": "What is the largest planet in our solar system?",
      "answer": "Jupiter"
    }, //Field Astronomy
    {
      "questionno": "4",
      "question": "Which planet is known as the 'Blue Planet'?",
      "answer": "Neptune"
    }, //Field Astronomy
    {
      "questionno": "5",
      "question": "What is the capital city of Germany?",
      "answer": "Berlin"
    }, //Field Geography
    {
      "questionno": "6",
      "question": "Which is the tallest mountain in Africa?",
      "answer": "Mount Kilimanjaro"
    }, //Field Geography
    {
      "questionno": "7",
      "question":
          "In which year was the JavaScript programming language created?",
      "answer": "1995"
    }, //Field IT
    {
      "questionno": "8",
      "question": "Who painted the famous artwork 'The Starry Night'?",
      "answer": "Vincent van Gogh"
    }, //Field Art
    {
      "questionno": "9",
      "question": "Who was the first person to step on the Moon?",
      "answer": "Neil Armstrong"
    }, //Field History
    {
      "questionno": "10",
      "question": "Which singer has won the most Grammy Awards?",
      "answer": "Beyoncé, with 28 wins"
    }, //Field Celebrity
    {
      "questionno": "11",
      "question": "Which country is known as the 'Land of the Rising Sun'?",
      "answer": "Japan"
    }, //Field Geography
    {
      "questionno": "12",
      "question": "Which country has the largest gold reserves? ",
      "answer": "United States"
    }, //Field Politics
    {
      "questionno": "13",
      "question": "Who is the inventor of the internet?",
      "answer": "Tim Berners-Lee"
    }, //Field Sports
    {
      "questionno": "14",
      "question": "How many players are there in a basketball team?",
      "answer": "5"
    }, //Field Sports
    {
      "questionno": "15",
      "question": "What is the chemical symbol for gold?",
      "answer": "Au"
    },
    {
      "questionno": "16",
      "question": "What is the full form of PDF?",
      "answer": "Portable Document Format"
    }, //Field IT(technology)
    {
      "questionno": "17",
      "question": "How many teeth does an adult human usually have?",
      "answer": "32"
    }, //Field Science
    {
      "questionno": "18",
      "question": "In what year was the first email sent?",
      "answer": "1971"
    }, //Field IT(technology)
    {
      "questionno": "19",
      "question": "Who is the CEO of Microsoft?",
      "answer": "Satya Nadella"
    }, //Field IT(technology)
    {
      "questionno": "20",
      "question": "Who discovered penicillin?",
      "answer": "Alexander Fleming"
    }, //Field Science
  ];

  int _start = 45;
  int questionCount = 0;
  bool _isTimerFinished = false;
  bool _isTimerRunning = false;
  bool _isPassTimerFinished = false;
  bool _isPassTimerRunning = false;

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
      showAnswer = false;
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
            _isPassTimerFinished = true;
          });
          timer.cancel();
        } else {
          setState(() {
            _start--;
            _isTimerRunning = true;
            _isPassTimerRunning = true;
          });
        }
      },
    );
  }

  List<bool> _isChecked = List<bool>.filled(20, false);
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
                                  _isTimerRunning == false
                                      ? startTimer()
                                      : () {};
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
                                  _isTimerRunning == false
                                      ? startTimer()
                                      : () {};
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
                        color: _isTimerFinished || _isPassTimerFinished
                            ? Colors.red
                            : Colors.white,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                          softWrap: true,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20 // Set the text color to white
                              ),
                        ),
                        showAnswer == true
                            ? Text(
                                QuestionList[questionCount]['answer'],
                                softWrap: true,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20 // Set the text color to white
                                    ),
                              )
                            : Text(''),
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
                            _isPassTimerRunning = false;
                            _isPassTimerFinished = false;
                            _start = 45;
                            _timer!.cancel();
                          });
                        },
                        child: Text("Restart")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _isPassTimerRunning == true
                                ? _timer!.cancel()
                                : _isPassTimerRunning = true;

                            _start = 10;
                            startTimer();
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrange),
                        child: Text("Pass")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            showAnswer = true;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green),
                        child: Text("Show Answer")),
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
