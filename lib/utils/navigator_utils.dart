import 'package:flutter/material.dart';

class NavigationUtils {
  static void pushNavigator({
    required BuildContext context,
    required Widget widget,
    bool withBottomTopAnimation = false,
  }) async {
    Navigator.of(context).push(
      withBottomTopAnimation
          ? PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => widget,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                const begin =
                    Offset(0.0, 1.0); // Start the animation from the bottom
                const end = Offset.zero; // End at the center (normal position)
                const curve =
                    Curves.easeInOut; // You can customize the curve here

                var tween = Tween(begin: begin, end: end)
                    .chain(CurveTween(curve: curve));

                return SlideTransition(
                  position: animation.drive(tween),
                  child: child,
                );
              },
            )
          : MaterialPageRoute(
              builder: (context) => widget,
            ),
    );
  }

  static void pushReplacementNavigator({
    required BuildContext context,
    required Widget widget,
    bool withBottomTopAnimation = false,
  }) {
    Navigator.of(context).pushReplacement(
      withBottomTopAnimation
          ? PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => widget,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                const begin = Offset(0.0, 1.0); // Start from the bottom
                const end = Offset.zero; // End at the center
                const curve = Curves.easeInOut;

                var tween = Tween(begin: begin, end: end)
                    .chain(CurveTween(curve: curve));

                return SlideTransition(
                  position: animation.drive(tween),
                  child: child,
                );
              },
            )
          : MaterialPageRoute(
              builder: (context) => widget,
            ),
    );
  }

  static void pushAndRemoveUntilNavigator({
    required BuildContext context,
    required Widget widget,
    bool withBottomTopAnimation = false,
  }) {
    Navigator.of(context).pushAndRemoveUntil(
      withBottomTopAnimation
          ? PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => widget,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                const begin = Offset(0.0, 1.0); // Start from the bottom
                const end = Offset.zero; // End at the center
                const curve = Curves.easeInOut;

                var tween = Tween(begin: begin, end: end)
                    .chain(CurveTween(curve: curve));

                return SlideTransition(
                  position: animation.drive(tween),
                  child: child,
                );
              },
            )
          : MaterialPageRoute(
              builder: (context) => widget,
            ),
      (Route<dynamic> route) => false, // This can be customized as needed
    );
  }

  static void popNavigator({
    required BuildContext context,
  }) {
    Navigator.of(context).pop();
  }
}
