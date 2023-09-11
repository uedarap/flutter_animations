import 'package:flutter/material.dart';
import 'package:grimorio/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
          ],
        ),
      ),
    );
  }
}
