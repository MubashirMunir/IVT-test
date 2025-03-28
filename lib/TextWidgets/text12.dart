import 'package:flutter/material.dart';
import 'package:testone/config/size_config.dart';

class Text12 extends StatelessWidget {
  Text12({
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
        fontSize: SizeConfig.font12(), // Scaled font size
        color: Color(0x3C3C4399),
        fontFamily: 'Inter',
      ),
    );
  }
}
