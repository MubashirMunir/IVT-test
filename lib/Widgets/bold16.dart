import 'package:flutter/material.dart';
import 'package:testone/utils/colors.dart';

class bold16 extends StatelessWidget {
  bold16({super.key, required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Text(
      textAlign: TextAlign.start,
      title,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: mq.width * .0400, // Scaled font size
        color: blackColor, fontFamily: 'Inter',
      ),
    );
  }
}
