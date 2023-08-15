import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:next_gen_interview_task/Bindings/home_binding.dart';
import 'package:next_gen_interview_task/Core/Api.dart';
import 'package:next_gen_interview_task/Presentation/Screen/HomeScreen.dart';

import 'AppConst/Styles/app_themes.dart';

void main() {
  runApp(const MyApp());
  Api().initApi();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: HomeBinding(),
      title: 'InterView Task',
      debugShowCheckedModeBanner: false,
      theme: AppThemes.main(),
      home: const HomeScreen(),
    );
  }
}
