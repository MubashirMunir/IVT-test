import 'package:flutter/material.dart';
import 'package:testone/config/size_config.dart';

class Text40 extends StatelessWidget {
  Text40({
    required this.title,
  });
  String title;

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Text(
      title,
      style: TextStyle(
        fontSize: SizeConfig.font40(), // Scaled font size
        color: Colors.black,
        fontFamily: 'Inter',
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
