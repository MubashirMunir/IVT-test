import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testone/Widgets/Text19.dart';
import 'package:testone/Widgets/bold16.dart';
import 'package:testone/Widgets/text12.dart';
import 'package:testone/config/size_config.dart';
import 'package:testone/utils/colors.dart';
import 'package:testone/utils/strings.dart';

class FGA extends StatelessWidget {
  FGA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text19(
          title: AppStrings.appbarguides,
          color: blackColor,
        ),
      ),
      body: ListView.builder(
        itemCount: 10, // Define a count for testing
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Card(
              elevation: 0,
              color: whiteColor,
              child: ListTile(
                contentPadding: EdgeInsets.only(
                    top: SizeConfig.height8(), bottom: 8, left: 5, right: 0),
                leading: Padding(
                  padding: const EdgeInsets.only(bottom: 9),
                  child: SizedBox(
                    height: 50, // Adjusted for balance
                    width: 45, // Keep a square size for better alignment
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/images/insta.svg',
                        height: SizeConfig.height45(), // Set specific height
                        width: SizeConfig.width40(), // Set specific width
                        fit: BoxFit.contain, // Ensures proper scaling
                      ),
                    ),
                  ),
                ),
                title: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: bold16(title: AppStrings.Instagaram),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text12(title: AppStrings.subtitle),
                    Text12(title: AppStrings.subtitle2),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
