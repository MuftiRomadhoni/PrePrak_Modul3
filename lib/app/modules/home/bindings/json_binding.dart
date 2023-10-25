import 'package:get/get.dart';

import '../controllers/json_controller.dart';

class JsonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JsonController>(
          () => JsonController(),
    );
  }
}
