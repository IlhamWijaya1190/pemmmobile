import 'package:get/get.dart';
import 'package:modul_2_public_api/services/http_controller.dart';

import '../../../data/services/http_controller.dart';


class HttpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HttpController>(
      () => HttpController(),
    );
  }
}