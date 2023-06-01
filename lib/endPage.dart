import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'General Round/GeneralRound.dart';

class endPage extends StatefulWidget {
  const endPage({super.key});

  @override
  State<endPage> createState() => _endPageState();
}

class _endPageState extends State<endPage> {
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
          Center(
            child: Text(
              ' The END',
              style: TextStyle(
                color: Colors.white,
                fontSize: 90.0,
                fontFamily: 'sans',
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class CircularButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFF235B90),
      ),
      child: InkWell(
        onTap: () {
          print("HELLO");
          Get.to(GeneralRound());
        },
        child: Icon(
          Icons.arrow_right,
          color: Colors.white,
          size: 80.0,
        ),
      ),
    );
  }
}
