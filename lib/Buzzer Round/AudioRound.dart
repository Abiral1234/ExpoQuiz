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
  //------------------SET 1----------------------------//
  // List questions = [
  //   {"question": "Guess this song name?", "audio": "assets/sounds/song1.mp3"},
  //   //Linkin Park -Numb
  //   {"question": "Guess the artist?", "audio": "assets/sounds/song2.mp3"},
  //   //Pink Floyd - Wish You Were Here
  //   {"question": "Guess this song name?", "audio": "assets/sounds/song3.mp3"},
  //   //Queen – Bohemian Rhapsody
  //   {"question": "Guess this artist?", "audio": "assets/sounds/song4.mp3"},
  //   //Narayan Gopal -Yeuta manchhe ko maya le kati
  // ];

  //--------------------------SET 2 -------------------------//
  // List questions = [
  //   {"question": "Guess this singer?", "audio": "assets/sounds/song5.mp3"},
  //   // Aruna Lama - Eh Kancha Malai Sunko Tara
  //   {
  //     "question": "Guess the main artist of this song?",
  //     "audio": "assets/sounds/song6.mp3"
  //   },
  //   //Lil Nas X - Old Town Road ft. Billy Ray Cyrus
  //   {"question": "Guess the artist name?", "audio": "assets/sounds/song7.mp3"},
  //   // Nabin K Bhattarai - Timi Le Herda Kasailai
  //   {"question": "Guess this song name?", "audio": "assets/sounds/song8.mp3"},
  //   //Vanessa Carlton - A Thousand Miles
  // ];

  //--------------------------SET 3 -------------------------//
  // List questions = [
  //   {"question": "Guess this artist name?", "audio": "assets/sounds/song9.mp3"},
  //   //Train - Hey Soul Sister
  //   {"question": "Guess this song name?", "audio": "assets/sounds/song10.mp3"},
  //   //Ed Sheeran - Shape Of You
  //   {"question": "Guess this speaker?", "audio": "assets/sounds/speech11.mp3"},
  //   //Martin Luther King Jr.
  //   {
  //     "question": "Guess this artist name?",
  //     "audio": "assets/sounds/song12.mp3"
  //   },
  //   //Ani Choying Drolma - Phoolko Aankhama
  // ];

  //--------------------------SET 4 -------------------------//
  // List questions = [
  //   {"question": "Guess this song name?", "audio": "assets/sounds/song13.mp3"},
  //   //Christina Perri - A Thousand Years
  //   {"question": "Guess this song name?", "audio": "assets/sounds/song14.mp3"},
  //   //Bruno Mars - Just The Way You Are
  //   {
  //     "question": "Guess this song name?",
  //     "audio": "assets/sounds/speech15.mp3"
  //   },
  //   //Madan Bhandari Speech
  //   {
  //     "question": "Guess this artist name?",
  //     "audio": "assets/sounds/song16.mp3"
  //   },
  //   //Sabin Rai -Gurasha Ko Feda Muni
  // ];

  //--------------------------SET 5 -------------------------//
  List questions = [
    {"question": "Guess the artist name?", "audio": "assets/sounds/song17.mp3"},
    //Ben E. King - Stand By Me
    {
      "question": "Guess this artist name?",
      "audio": "assets/sounds/song18.mp3"
    },
    //John Denver - Take Me Home, Country Roads
    {"question": "Guess this song name?", "audio": "assets/sounds/song19.mp3"},
    //Bob Marley - Is This Love
    {
      "question": "Guess this singer name?",
      "audio": "assets/sounds/song20.mp3"
    },
    //Titanic • My Heart Will Go On • Celine Dion
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
