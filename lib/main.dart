import 'package:ecotrack_app/app/controllers/user_controller.dart';
import 'package:ecotrack_app/app/theme/app_theme.dart';
import 'package:ecotrack_app/routes/app_pages.dart';
import 'package:ecotrack_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.splash, // Rota inicial
    theme: appThemeData, // Tema personalizado do app
    defaultTransition: Transition.fade, // Transição padrão entre telas
    getPages: AppPages.pages, // Array de navegação contendo as rotas e suas pages
    initialBinding: BindingsBuilder(() {
      Get.put(UserController());
    }),
  ));
}