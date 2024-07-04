import 'package:cofee_system/controller/splash_controller.dart';
import 'package:cofee_system/util/colors.dart';
import 'package:cofee_system/util/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
       init: SplashController(),
      builder: (_) => Scaffold(
        backgroundColor: AppColors.backgroundcolor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImages.splash, height: 100),
              const SizedBox(height: 20,width: 20,),
              const Text(
                'Welcome to My System',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),
              ),
               const SizedBox(height: 16),
              const Text(
                'Loading...',
                style: TextStyle(fontSize: 16,color: Colors.white),
              ),
            ],
          ),
        ),
    ));
  }
}
