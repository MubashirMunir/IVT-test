import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testone/Widgets/bold16.dart';
import 'package:testone/config/size_config.dart';
import 'package:testone/utils/strings.dart';

class EnterManual extends StatelessWidget {
  const EnterManual({super.key});

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;

    return Material(
      color: Colors.transparent,
      child: AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(SizeConfig.borderRadius),
        ),
        content: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: SizeConfig.height10(),
          ),
          SizedBox(
            width: SizeConfig.width150(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'assets/images/qricon.svg',
                  height: SizeConfig.height24(),
                ),
                bold16(title: AppStrings.qrcode),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: mq.height * .0091),
            child: const Divider(
              color: Color(0x33868686),
            ),
          ),
        ])),
      ),
    );
  }
}
