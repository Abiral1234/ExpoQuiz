import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:audioplayers/audioplayers.dart';

import '../Puzzle Round/PuzzleRound.dart';
import '../Widgets/CircularButton2.dart';
import 'Visual Round.dart';

class AudioRound extends StatefulWidget {
  const AudioRound({super.key});

  @override
  State<AudioRound> createState() => _AudioRoundState();
}

class _AudioRoundState extends State<AudioRound> {
  List questions = [
    {"question": "Guess this artist name", "audio": "assets/sounds/song1.mp3"},
    {"question": "Who is the speaker?", "audio": "assets/sounds/song2.mp3"},
    {"question": "Guess this person 3", "audio": "image.png"},
    {"question": "Guess this person 4", "audio": "image2.png"}
  ];
  late AudioPlayer audioPlayer;
  late String audioUrl = questions[0]["audio"];
  bool isPlaying = false;

  int questionNumber = 0;
  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  Future<void> playAudio() async {
    int result = await audioPlayer.play(audioUrl);
    if (result == 1) {
      setState(() {
        isPlaying = true;
      });
    }
  }

  Future<void> pauseAudio() async {
    int result = await audioPlayer.pause();
    if (result == 1) {
      setState(() {
        isPlaying = false;
      });
    }
  }

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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  questions[questionNumber]["question"],
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Sans',
                    fontSize: 35.0,
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      isPlaying ? 'Audio is playing' : 'Audio is paused',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    SizedBox(height: 20.0),
                    ElevatedButton(
                      child: Text(isPlaying ? 'Pause' : 'Play'),
                      onPressed: isPlaying ? pauseAudio : playAudio,
                    ),
                  ],
                ),
              ),
            ],
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
                          questionNumber = 0;
                          audioUrl = questions[0]['audio'];
                        });
                      },
                      child: Text("1")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          questionNumber = 1;
                          audioUrl = questions[1]['audio'];
                        });
                      },
                      child: Text("2")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          questionNumber = 2;
                          audioUrl = questions[2]['audio'];
                        });
                      },
                      child: Text("3")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          questionNumber = 3;
                          audioUrl = questions[3]['audio'];
                        });
                      },
                      child: Text("4")),
                  CircularButton2(
                    icon: Icons.arrow_forward,
                    onTap: () {
                      Get.to(PuzzleRound());
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

// class AudioPlayerScreen extends StatefulWidget {
//   final String songUrl;
//   AudioPlayerScreen({required this.songUrl});
//   @override
//   _AudioPlayerScreenState createState() => _AudioPlayerScreenState();
// }

// class _AudioPlayerScreenState extends State<AudioPlayerScreen> {
//   late AudioPlayer audioPlayer;
//   late String audioUrl = widget.songUrl;
//   bool isPlaying = false;

//   @override
//   void initState() {
//     super.initState();
//     audioPlayer = AudioPlayer();
//   }

//   @override
//   void dispose() {
//     audioPlayer.dispose();
//     super.dispose();
//   }

//   Future<void> playAudio() async {
//     int result = await audioPlayer.play(audioUrl);
//     if (result == 1) {
//       setState(() {
//         isPlaying = true;
//       });
//     }
//   }

//   Future<void> pauseAudio() async {
//     int result = await audioPlayer.pause();
//     if (result == 1) {
//       setState(() {
//         isPlaying = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Text(
//             isPlaying ? 'Audio is playing' : 'Audio is paused',
//             style: TextStyle(fontSize: 20.0, color: Colors.white),
//           ),
//           SizedBox(height: 20.0),
//           ElevatedButton(
//             child: Text(isPlaying ? 'Pause' : 'Play'),
//             onPressed: isPlaying ? pauseAudio : playAudio,
//           ),
//         ],
//       ),
//     );
//   }
// }
