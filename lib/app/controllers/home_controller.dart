import 'package:ecotrack_app/app/controllers/user_controller.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final UserController newUserController = Get.find<UserController>();
  var currentIndex = 1.obs;

  void onLogout() {
    newUserController.isLogged.value = false;
    currentIndex.value = 1;
    Get.offAllNamed('/login');
  }

  void changePage(int index) {
    currentIndex.value = index;
  }
}