import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:taskwarrior/app/themes/themes.dart';
import 'package:taskwarrior/app/utils/theme/app_settings.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppSettings.init();
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
