import 'package:chat_app/feature/home/presenation/views/splash_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/core/theme/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: AppColors.background_splash,

      body: SplashScreenBody(),
    );
  }
}