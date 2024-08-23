import 'package:digi_khata/controller.dart';
import 'package:digi_khata/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    final HomeController cont = Get.find();
    return GetMaterialApp(
      home: SplashScreen(),
      // theme: cont.darkMode.value
      //     ? AppThemeDark.appThemeData
      //     : AppThemeData.appThemeData,
      debugShowCheckedModeBanner: false,
    );
  }
}
