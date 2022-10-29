import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tempmail/app/config/routes/routes_library.dart';
import 'package:tempmail/app/config/themes/app_basic_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.initial,
      title: 'TempMail',
      theme: AppBasicTheme.getThemeData(),
      getPages: AppPages.routes,
    );
  }
}
