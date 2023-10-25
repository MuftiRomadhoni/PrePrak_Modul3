import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../routes/app_pages.dart';
import '../../models/keyboard_model.dart';

class HomeController  extends GetxController {
  final List<String> imageAssets = [
    'assets/75.jpg',
    'assets/full.jpg',
    'assets/60.jpg',
  ];

  final List<KeyboardModel> cardItems = [
    KeyboardModel('Barebone', 'assets/barebone.jpg'),
    KeyboardModel('Switch', 'assets/switch.jpg'),
    KeyboardModel('Stabilizer', 'assets/stabilizer.jpg'),
    KeyboardModel('Keycaps', 'assets/keycaps.jpg'),
    KeyboardModel('Deskmat', 'assets/deskmat.jpg'),
  ];

  final List<String> cardTexts = [
    'Barebone',
    'Switch',
    'Stabilizer',
    'Keycaps',
    'Deskmat',
  ];

  int currentIndex = 0;

  void onPageChanged(int index) {
    currentIndex = index;
  }

  void navigateToDescriptionPage(int currentIndex) {
    Get.toNamed(Routes.DESC);
  }

  void navigateToChatPage() {
    Get.toNamed(Routes.CHAT);
  }
}


