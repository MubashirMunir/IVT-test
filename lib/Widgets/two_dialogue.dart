import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testone/Widgets/Text19.dart';
import 'package:testone/Widgets/bold16.dart';
import 'package:testone/config/size_config.dart';
import 'package:testone/utils/colors.dart';
import 'package:testone/utils/strings.dart';

void showBottomSheets(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
    ),
    builder: (context) {
      return Container(
        padding: const EdgeInsets.only(bottom: 10),
        width: SizeConfig.width358(),
        height: SizeConfig.height430(),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: SizeConfig.height4(),
          ),
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(CupertinoIcons.qrcode),
                title: bold16(title: AppStrings.qrcode),
                onTap: () {},
              ),
              const Divider(),
              SizedBox(
                width: SizeConfig.width220(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset('assets/images/edit.svg'),
                    bold16(title: AppStrings.EnterManually),
                  ],
                ),
              ),
              const Divider(),
              ListTile(
                leading: SvgPicture.asset('assets/images/photos.svg'),
                title: bold16(title: AppStrings.ImportfromPhotos),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                leading: SvgPicture.asset('assets/images/folder.svg'),
                title: bold16(title: AppStrings.ImportfromFiles),
                onTap: () {},
              ),
              const Divider(
                thickness: 10,
              ),
              ListTile(
                title: Center(
                  child: Text19(
                    title: AppStrings.Cancel,
                    color: blueColor,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}
