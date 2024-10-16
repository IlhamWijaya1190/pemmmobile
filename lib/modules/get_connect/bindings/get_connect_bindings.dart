import 'package:get/get.dart';
import 'package:modul_2_public_api/services/get_connet_controller.dart';

import '../../../data/services/get_connect_controller.dart';


class GetConnectBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetConnectController>(
      () => GetConnectController(),
    );
  }
}