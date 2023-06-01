import 'package:flutter/material.dart';
import 'dart:async';

class TimerApp extends StatefulWidget {
  @override
  _TimerAppState createState() => _TimerAppState();
}

class _TimerAppState extends State<TimerApp> {
  int _start = 45;
  bool _isTimerFinished = false;

  Timer? _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
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
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _isTimerFinished
          ? 'The time to answer is finished'
          : 'Time left: $_start seconds',
      style: TextStyle(
        color: _isTimerFinished ? Colors.red : Colors.white,
        fontSize: 20.0,
      ),
    );
  }
}
