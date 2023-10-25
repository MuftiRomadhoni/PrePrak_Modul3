import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mk_2/app/modules/models/welcome.dart';
import '../controllers/json_controller.dart';

class JsonView extends GetView<JsonController> {
  final JsonController controller = Get.put(JsonController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JSON Data'),
        backgroundColor:  Color(0xFF222831), // Warna latar belakang app bar
      ),
      body: Obx(
            () => controller.isLoading.value
            ? Center(child: CircularProgressIndicator())
            : Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.teal],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: PageView.builder(
            itemCount: controller.jsonData.length,
            itemBuilder: (BuildContext context, int index) {
              Welcome welcome = Welcome.fromJson(controller.jsonData[index]);
              return Center(
                child: Card(
                  elevation: 5, // Efek bayangan card
                  margin: EdgeInsets.all(20.0),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'ID: ${welcome.id}',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Title: ${welcome.title}',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
