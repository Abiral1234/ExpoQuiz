import 'package:flutter/material.dart';

class CircularButton2 extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  CircularButton2({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,
      ),
      child: InkWell(
        onTap: onTap,
        child: Icon(
          icon,
          color: Colors.white,
          size: 40.0,
        ),
      ),
    );
  }
}
