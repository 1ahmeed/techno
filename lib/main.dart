import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_techno/core/utils/app_strings.dart';
import 'package:task_techno/screen/cart/cart_screen.dart';
import 'package:task_techno/screen/layout/layout_screen.dart';
import 'package:task_techno/screen/splash/splash_screen.dart';
import 'package:device_preview/device_preview.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    // systemNavigationBarContrastEnforced: true,
    systemNavigationBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark// status bar color
  ));
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

        fontFamily: AppStrings.fontFamily
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
