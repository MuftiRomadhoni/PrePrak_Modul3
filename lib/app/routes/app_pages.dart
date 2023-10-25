import 'package:get/get.dart';
import 'package:mk_2/app/modules/home/bindings/chat_binding.dart';
import 'package:mk_2/app/modules/home/bindings/home_binding.dart';
import 'package:mk_2/app/modules/home/views/chat_view.dart';
import 'package:mk_2/app/modules/home/views/description_view.dart';
import 'package:mk_2/app/modules/home/views/home_view.dart';

import '../modules/home/bindings/desc_binding.dart';
import '../modules/home/bindings/json_binding.dart';
import '../modules/home/views/json_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => ChatPageView(),
      binding: ChatView(),
    ),
    GetPage(
      name: _Paths.DESC, // Pastikan sudah ada rute ini
      page: () => DescriptionPageView(),
      binding: DescView(),
    ),GetPage(
      name: _Paths.JSON, // Pastikan sudah ada rute ini
      page: () => JsonView(),
      binding: JsonBinding(),
    ),
  ];
}
