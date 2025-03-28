import 'package:flutter/material.dart';
import 'package:testone/config/size_config.dart';

class Text16 extends StatelessWidget {
  Text16({super.key, required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return SizedBox(
      width: mq.width * .8,
      child: Text(
        textAlign: TextAlign.center,
        title,
        maxLines: 2,
        style: TextStyle(
          fontSize: SizeConfig.font16(), // Scaled font size
          color: Color(0xFF868686), fontFamily: 'Inter',
        ),
      ),
    );
  }
}
