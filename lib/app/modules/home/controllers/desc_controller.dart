import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class DescController extends GetxController {
  final List<String> imageAssets = [
    'assets/75.jpg',
    'assets/full.jpg',
    'assets/60.jpg',
  ];
}

class YourWidget extends StatelessWidget {
  final DescController descController = Get.find<DescController>(); // Mengambil instance controller

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      descController.imageAssets[1],
      width: double.infinity,
      height: 200,
      fit: BoxFit.cover,
    );
  }
}
