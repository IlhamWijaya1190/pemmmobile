import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:modul_2_public_api/routes/app_pages.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
