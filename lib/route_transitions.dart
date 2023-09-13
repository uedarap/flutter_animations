import 'package:flutter/material.dart';

Route sliderRouteTransition(
  Widget nextScreen, {
  Duration duration = const Duration(milliseconds: 1000),
  Curve curve = Curves.ease,
}) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => nextScreen,
    transitionDuration: duration,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      Animatable<Offset> tween =
          Tween(begin: const Offset(-1, 1), end: Offset.zero).chain(
        CurveTween(curve: curve),
      );
      return SlideTransition(
        position: animation.drive(tween),
        child: nextScreen,
      );
    },
  );
}
