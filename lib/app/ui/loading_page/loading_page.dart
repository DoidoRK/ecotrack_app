import 'package:ecotrack_app/app/controllers/loading_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadingPage extends GetView<LoadingController> {
  final LoadingController registerController = Get.put(LoadingController());
  LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'EcoTrack',
              style: TextStyle(
                fontSize: 36,
                color: Colors.green,
                fontFamily: 'Alata',
              ),
            ),
            SizedBox(height: 50),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
