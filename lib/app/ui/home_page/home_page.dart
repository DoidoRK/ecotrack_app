import 'package:ecotrack_app/app/controllers/home_controller.dart';
import 'package:ecotrack_app/app/ui/home_page/widgets/about_widget.dart';
import 'package:ecotrack_app/app/ui/home_page/widgets/map_widget.dart';
import 'package:ecotrack_app/app/ui/home_page/widgets/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {    
    final List<Widget> pages = [
      ProfileWidget(
        newUserName: "Iran de Santana Alves",
        newUserPhotoAsset: 'assets/images/luva.png',
        onLogout: homeController.onLogout,
      ), // Exemplo de uso de asset local
      const MapWidget(),
      const AboutWidget(),
    ];


    return Scaffold(
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          currentIndex: homeController.currentIndex.value,
          onTap: (index) => homeController.changePage(index),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: 'Mapa',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'Sobre',
            ),
          ],
        );
      }),
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              return pages[homeController.currentIndex.value]; // Widget variável
            }),
          ),
        ],
      ),
    );
  }
}