import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EC extends StatelessWidget {
  const EC({super.key});

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;

    return Container(
        // height: mq.width * .17,
        width: mq.width * .459,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(mq.width)),
        child: SvgPicture.asset(
          'assets/images/explor.svg',
          fit: BoxFit.fill,
        ));
  }
}
