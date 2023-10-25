import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/chat_controller.dart';

class ChatPageView extends GetView<ChatController> {
  final ChatController chatController = Get.put(ChatController());

  Future<void> _pickImageFromGallery() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      final imagePath = pickedFile.path;
      chatController.sendImage(pickedFile);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chat With Keebs',
          style: GoogleFonts.arsenal(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFF393E46),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16.0),
            bottomRight: Radius.circular(16.0),
          ),
        ),
      ),
      body: Container(
        color: Color(0xFF222831),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Obx(() {  //getx
                return ListView.builder(
                  itemCount: chatController.messages.length,
                  itemBuilder: (context, index) {
                    final message = chatController.messages[index];
                    return ListTile(
                      title: message.isImage
                          ? Image.file(File(message.content))
                          : Text(message.content),
                      subtitle: message.isCustomer
                          ? Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'You',
                          style: GoogleFonts.arsenal(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      )
                          : Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'CS',
                          style: GoogleFonts.arsenal(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  },
                );
              }),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: chatController.textController,
                      decoration: InputDecoration(
                        hintText: 'Type a message...',
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {
                      chatController.sendMessage(chatController.textController.text, isCustomer: true);
                      Future.delayed(Duration(seconds: 1), () {
                        chatController.sendMessage('Hello! How can I assist you today?', isCustomer: false);
                      });
                      chatController.textController.clear();
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.image),
                    onPressed: () {
                      _pickImageFromGallery();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
