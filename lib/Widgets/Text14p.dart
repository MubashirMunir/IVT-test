import 'package:flutter/material.dart';
import 'package:testone/config/size_config.dart';

class Text14s extends StatelessWidget {
  Text14s({
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
        fontSize: SizeConfig.font14(), // Scaled font size
        color: Color(0xFF868686), // Fully opaque gray
        fontFamily: 'Inter',
      ),
    );
  }
}
