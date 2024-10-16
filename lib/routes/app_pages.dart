// TOimport 'package:get/get.dart';
// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:modul_2_public_api/app/modules/article_detail/bindings/article_detail_bindings.dart';
import 'package:modul_2_public_api/app/modules/article_detail/views/article_detail_view.dart';
import 'package:modul_2_public_api/app/modules/article_detail/views/article_detail_web_view.dart';
import 'package:modul_2_public_api/app/modules/dio_screen/bindings/dio_binding.dart';
import 'package:modul_2_public_api/app/modules/dio_screen/views/dio_view.dart';
import 'package:modul_2_public_api/app/modules/get_connect/bindings/get_connect_binding.dart';
import 'package:modul_2_public_api/app/modules/get_connect/views/get_connect_view.dart';
import 'package:modul_2_public_api/app/modules/http_screen/bindings/http_binding.dart';
import 'package:modul_2_public_api/app/modules/http_screen/views/http_view.dart';
import 'package:modul_2_public_api/modules/article.details/bindings/article_details_bindings.dart';
import 'package:modul_2_public_api/modules/article.details/views/article_detail_web_view.dart';
import 'package:modul_2_public_api/modules/article.details/views/article_details_view.dart';
import 'package:modul_2_public_api/modules/dio_screen/bindings/dio_bindings.dart';
import 'package:modul_2_public_api/modules/dio_screen/views/dio_view.dart';
import 'package:modul_2_public_api/modules/get_connect/bindings/get_connect_bindings.dart';
import 'package:modul_2_public_api/modules/get_connect/views/get_connect_view.dart';
import 'package:modul_2_public_api/modules/home/bindings/home_bindings.dart';
import 'package:modul_2_public_api/modules/home/view/home_view.dart';
import 'package:modul_2_public_api/modules/http_screen/bindings/http_screen_bindings.dart';
import 'package:modul_2_public_api/modules/http_screen/views/http_screen_view.dart';


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
        name: _Paths.HTTP,
        page: () => const HttpView(),
        binding: HttpBinding()),
    GetPage(
        name: _Paths.DIO, page: () => const DioView(), binding: DioBinding()),
    GetPage(
        name: _Paths.GETCONNECT,
        page: () => const GetConnectView(),
        binding: GetConnectBinding()),
    GetPage(
        name: _Paths.ARTICLE_DETAILS,
        page: () => ArticleDetailPage(article: Get.arguments),
        binding: ArticleDetailBinding()),
    GetPage(
        name: _Paths.ARTICLE_DETAILS_WEBVIEW,
        page: () => ArticleDetailWebView(article: Get.arguments),
        binding: ArticleDetailBinding())
  ];
}
