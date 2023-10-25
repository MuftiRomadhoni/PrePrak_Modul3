import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      initialRoute: Routes.HOME, // Ganti dengan rute awal aplikasi Anda
      getPages: AppPages.routes,
      // Konfigurasi lainnya
    ),
  );
}


// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Keebs',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomeView(),
//     );
//   }
// }
