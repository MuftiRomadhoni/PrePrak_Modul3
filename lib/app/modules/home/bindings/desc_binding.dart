import 'package:get/get.dart';

import '../controllers/desc_controller.dart';

class DescView extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DescController>(
          () => DescController(),
    );
  }
}
