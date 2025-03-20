import 'package:flutter/material.dart';

class KeyboardUtils {
  static void hideKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  static void goToEndOfList(
      {required ScrollController scrollController,
      int? duration,
      double? offset}) {
    scrollController.animateTo(
      offset ?? scrollController.position.maxScrollExtent,
      duration: duration == 0
          ? Duration.zero
          : Duration(milliseconds: duration ?? 1000), // Animation duration
      curve: Curves.linear, // Animation curve
    );
  }

  static void goToStartOfList(
      {required ScrollController scrollController, int? duration}) {
    scrollController.animateTo(
      scrollController.position.minScrollExtent,
      duration: Duration(milliseconds: duration ?? 1000), // Animation duration
      curve: Curves.linear, // Animation curve
    );
  }
}
