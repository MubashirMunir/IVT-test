import 'package:flutter/material.dart';
import 'package:testone/config/size_config.dart';

class Text19 extends StatelessWidget {
  Text19({super.key, required this.title, required this.color});
  String title;
  Color color;

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Text(
      title,
      style: TextStyle(
        fontSize: SizeConfig.font19(), // Scaled font size
        color: color,
        fontFamily: 'Inter',
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
