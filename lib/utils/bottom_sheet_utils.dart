import 'package:flutter/material.dart';
import 'package:testone/config/size_config.dart';
import 'package:testone/utils/colors.dart';

class BottomSheetUtils {
  static dynamic showCustomBottomSheet({
    required BuildContext context,
    required Widget bottomSheet,
    bool isScrollControlled = true,
    bool isDismissible = false,
    bool enableDrag = false,
  }) async {
    dynamic value = await showModalBottomSheet(
      isScrollControlled: isScrollControlled,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      useSafeArea: true,
      shape: Border.all(width: SizeConfig.borderWidth),
      context: context,
      builder: (BuildContext context) {
        return bottomSheet;
      },
    );
    return value;
  }

  static dynamic showRoundedBottomSheet({
    required BuildContext context,
    required Widget bottomSheet,
    bool isScrollControlled = true,
    bool isDismissible = true,
    bool enableDrag = true,
  }) async {
    dynamic value = await showModalBottomSheet(
      isScrollControlled: isScrollControlled,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      useSafeArea: true,
      backgroundColor: whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(SizeConfig.bottomSheetBorderRadius),
          topRight: Radius.circular(SizeConfig.bottomSheetBorderRadius),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return bottomSheet;
      },
    );
    return value;
  }
}
