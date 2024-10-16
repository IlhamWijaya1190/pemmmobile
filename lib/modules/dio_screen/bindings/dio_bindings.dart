import 'package:get/get.dart';


class DioBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DioController>(
      () => DioController(),
    );
  }
}

class DioController {
  get isLoading => null;

  get articles => null;
}