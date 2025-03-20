import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testone/Widgets/text16.dart';

class MyWidget extends StatelessWidget {
  final String title;

  MyWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    double fontSize = mq.width < 600 ? 14.sp : 16.sp;

    return SizedBox(
      width: mq.width * .24,
      child: Column(
        children: [
          1.verticalSpace,
          SizedBox(
            height: mq.width * .159,
            width: mq.width * .22,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12).r,
              child: Image.asset(
                'assets/images/lrka.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          10.verticalSpace,
          // Text10(
          //   title: "$title ",
          // ),
        ],
      ),
    );
  }
}
