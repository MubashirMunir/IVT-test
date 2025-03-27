import 'package:flutter/material.dart';
import 'package:testone/config/size_config.dart';

class Text18 extends StatelessWidget {
  Text18({super.key, required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return SizedBox(
      width: mq.width * .8,
      child: Text(
        title,
        maxLines: 2,
        style: TextStyle(
          fontSize: SizeConfig.font18(), // Scaled font size
          color: Color(0xFF020A16), // Fully opaque dark blue/black shade
          fontFamily: 'Inter',
        ),
      ),
    );
  }
}
