import 'package:flutter/material.dart';
import 'package:testone/Widgets/Text19.dart';
import 'package:testone/Widgets/two_dialogue.dart';
import 'package:testone/config/size_config.dart';
import 'package:testone/utils/colors.dart';
import 'package:testone/utils/strings.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showBottomSheets(context);
      },
      child: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: const Color(0xFF0066FF),
            borderRadius: BorderRadius.circular(SizeConfig.borderRadius)),
        height: SizeConfig.height54(),
        width: SizeConfig.width358(),
        child: Center(
          child: Text19(
            title: AppStrings.AddAccount,
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}
