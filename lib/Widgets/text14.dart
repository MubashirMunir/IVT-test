import 'package:flutter/material.dart';
import 'package:testone/config/size_config.dart';

class Text14 extends StatelessWidget {
  Text14({super.key, required this.title, required this.color});
  String title;
  Color color;
  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Text(
      title,
      style: TextStyle(
        fontSize: SizeConfig.font14(), // Scaled font size
        color: color,
        fontFamily: 'Inter',
      ),
    );
  }
}
