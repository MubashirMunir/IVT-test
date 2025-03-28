import 'package:flutter/material.dart';
import 'package:testone/config/size_config.dart';

class Text20 extends StatelessWidget {
  Text20({
    super.key,
    required this.title,
  });
  String title;

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Text(
      title,
      style: TextStyle(
        fontSize: SizeConfig.font20(), // Scaled font size
        color: Colors.black,
        fontFamily: 'Inter',
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
