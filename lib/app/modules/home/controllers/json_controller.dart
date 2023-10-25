import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class JsonController extends GetxController {
  var isLoading = true.obs;
  var jsonData = List<Map<String, dynamic>>.empty().obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/todos/5'),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonMap = json.decode(response.body);
        jsonData.value = [jsonMap]; // Assign the JSON data to jsonData
        isLoading.value = false;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      isLoading.value = false;
      print('Error: $e');
    }
  }
}
