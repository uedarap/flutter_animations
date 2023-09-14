import 'package:flutter/material.dart';
import 'package:grimorio/route_transitions.dart';
import 'package:grimorio/screens/dashboard.dart';
import 'package:grimorio/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double imageOpacity = 0;
  int timeToAnimationInMilliseconds = 2000;

  @override
  void initState() {
    waitAndShow();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.modalBackgroundGradient[2],
      body: Center(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Image.asset(
                'assets/images/grimorio_1152.png',
                width: 300,
              ),
            ),
            AnimatedOpacity(
              opacity: imageOpacity,
              duration: Duration(milliseconds: timeToAnimationInMilliseconds),
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Image.asset(
                  'assets/images/grimorio_titulo_1152.png',
                  width: 300,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  waitAndShow() {
    Future.delayed(const Duration(milliseconds: 1250)).then((value) {
      setState(() {
        imageOpacity = 1;
      });
      waitAndNextScreen();
    });
  }

  waitAndNextScreen() {
    Future.delayed(Duration(milliseconds: timeToAnimationInMilliseconds + 300))
        .then(
      (value) {
        Navigator.of(context).pushReplacement(
          sliderRouteTransition(
            const Dashboard(),
            duration: const Duration(milliseconds: 2000),
            beginPosition: const Offset(1, 0),
          ),
        );
      },
    );
  }
}
