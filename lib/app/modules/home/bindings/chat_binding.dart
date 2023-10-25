import 'package:get/get.dart';

import '../controllers/chat_controller.dart';

class ChatView extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatController>(
          () => ChatController(),
    );
  }
}
