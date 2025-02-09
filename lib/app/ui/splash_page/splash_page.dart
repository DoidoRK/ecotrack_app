import 'package:ecotrack_app/app/controllers/splash_controller.dart';
import 'package:ecotrack_app/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashController> {
  final SplashController registerController = Get.put(SplashController());

  SplashPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appThemeData.primaryColor,
      body: const Center(
        child: Text(
          'EcoTrack',
          style: TextStyle(
            fontSize: 36,
            color: Colors.white,
            fontFamily: 'Alata',
          ),
        ),
      ),
    );
  }
}