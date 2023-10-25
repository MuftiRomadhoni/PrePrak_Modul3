import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ChatController extends GetxController {
  RxList<Message> messages = <Message>[].obs;
  TextEditingController textController = TextEditingController();
  RxList<XFile> selectedImages = <XFile>[].obs;

  void sendMessage(String text, {bool isCustomer = true}) {
    messages.add(Message(text, isCustomer));
  }

  void sendImage(XFile image) {
    selectedImages.add(image);
    messages.add(Message(image.path, true, isImage: true));
  }
}

class Message {
  final String content;
  final bool isCustomer;
  final bool isImage;

  Message(this.content, this.isCustomer, {this.isImage = false});
}
