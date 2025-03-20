import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testone/Widgets/bold16.dart';
import 'package:testone/Widgets/text12.dart';
import 'package:testone/utils/colors.dart';
import 'package:testone/utils/strings.dart';

class drawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;

    return Drawer(
      width: 390,
      child: ListView.builder(itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          height: mq.height * .13,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: whiteColor),
          child: ListTile(
            titleAlignment: ListTileTitleAlignment.titleHeight,
            title: bold16(title: AppStrings.Instagaram),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text12(
                  title: AppStrings.subtitle,
                  color: const Color(0xFF3C3C4399),
                ),
                Text12(
                  title: AppStrings.TaskBar,
                  color: const Color(0xFF3C3C4399),
                ),
              ],
            ),
            leading: SvgPicture.asset('assets/images/insta.svg'),
          ),
        );
      }),
    );
  }
}
