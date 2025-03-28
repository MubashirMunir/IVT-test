import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testone/Widgets/Text19.dart';
import 'package:testone/Widgets/bold16.dart';
import 'package:testone/Widgets/custom_dialogue.dart';
import 'package:testone/utils/colors.dart';
import 'package:testone/utils/strings.dart';
import 'package:testone/utils/toast_util.dart';

Future<Map<String, String>?> showBottomSheets(BuildContext context) async {
  Map<String, String>? values = await showThreeTextFieldDialog(context);

  return await showModalBottomSheet<Map<String, String>>(
    // ignore: use_build_context_synchronously
    context: context,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              width: 320,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 15,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset(
                        'assets/images/qricon.svg',
                        height: 23,
                        width: 23,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      bold16(title: AppStrings.qrcode),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Color(0x86868633).withOpacity(0.2),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () async {
                      Map<String, String>? newValues =
                          await showThreeTextFieldDialog(context);
                      if (context.mounted) {
                        Navigator.pop(context, newValues);
                      }
                    },
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        SvgPicture.asset(
                          'assets/images/edit.svg',
                          height: 26,
                          width: 26,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        bold16(title: AppStrings.EnterManually),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: const Color(0x86868633).withOpacity(0.2),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset(
                        'assets/images/photos.svg',
                        height: 26,
                        width: 26,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      bold16(title: AppStrings.ImportfromPhotos),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Color(0x86868633).withOpacity(0.2),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset(
                        'assets/images/folder.svg',
                        height: 26,
                        width: 26,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      bold16(title: AppStrings.ImportfromFiles),
                    ],
                  ),
                ],
              )),
          const SizedBox(height: 10),
          Container(
            height: 54,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: whiteColor, borderRadius: BorderRadius.circular(8)),
            child: TextButton(
              onPressed: () {
                if (context.mounted) {
                  Navigator.pop(context, values);
                }
              },
              child: Text19(title: 'Cancel', color: lightBlueColor),
            ),
          ),
          const SizedBox(height: 20), // Bottom margin
        ],
      );
    },
  );
}
